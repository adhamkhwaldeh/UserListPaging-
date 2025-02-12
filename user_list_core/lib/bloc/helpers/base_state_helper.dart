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
}
