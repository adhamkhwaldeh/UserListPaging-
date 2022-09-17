import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:common_library/bloc/base_state/base_state.dart';
import 'package:common_library/get_localization/base_l10s.dart';
import 'package:common_library/helpers/snack_bar_helper.dart';
import 'package:common_library/widgets/codefirst_progress_dialog.dart';

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
