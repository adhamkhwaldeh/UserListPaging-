import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:user_list_core/bloc/base_state/base_state.dart';
import 'package:user_list_core/get_localization/base_l10s.dart';
import 'package:user_list_core/helpers/snack_bar_helper.dart';
import 'package:user_list_core/widgets/codefirst_progress_dialog.dart';

class BaseStateHelper {
  static bindEitherBaseState(BaseState baseState, ProgressDialog pr) {
    baseState.maybeMap(
      initial: (state) => {},
      progress: (state) => {pr.show()},
      dismissProgress: (state) => {pr.hide()},
      noDataFound: (state) => {},
      noInternetConnection: (state) {
        FocusManager.instance.primaryFocus?.unfocus();
        SnackBarHelper.errorSnackBar(BaseL10S.internetIssue.tr,
            BaseL10S.pleaseCheckYourInternetConnection.tr);
      },
      internalServerError: (state) {
        FocusManager.instance.primaryFocus?.unfocus();
        SnackBarHelper.errorSnackBar(BaseL10S.notAuthorized.tr, state.error);
      },
      notAuthorize: (state) {
        SnackBarHelper.errorSnackBar(BaseL10S.notAuthorized.tr, state.error);
      },
      failure: (state) {
        FocusManager.instance.primaryFocus?.unfocus();
        SnackBarHelper.errorSnackBar(
            BaseL10S.unexpectedErrorHappened.tr, state.error);
      },
      orElse: () {},
    );
  }

  static BaseState<T> getEither<T>(Exception error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.connectionError:
        case DioExceptionType.cancel:
          return const BaseStateNoInternetConnection();
        case DioExceptionType.badCertificate:
          return BaseStateNotAuthorize(
            error: error.response?.statusMessage?.toString() ?? "",
          );

        case DioExceptionType.badResponse:
          if (error.response?.statusCode == HttpStatus.unauthorized) {
            return BaseStateNotAuthorize(
                error: error.response?.statusMessage?.toString() ?? "");
          } else if (error.response?.statusCode == HttpStatus.notFound) {
            return const BaseStateNoDataFound();
          } else if (error.response?.statusCode == HttpStatus.badRequest) {
            return BaseStateInternalServerError(
                error: error.response?.statusMessage?.toString() ?? "");
          }
          return BaseStateFailure(
              error: error.response?.statusMessage?.toString() ?? "");
        case DioExceptionType.unknown:
          return BaseStateFailure(
              error: error.response?.statusMessage?.toString() ?? "");
      }
    } else {
      return BaseStateFailure(error: error.toString());
    }
  }
}
