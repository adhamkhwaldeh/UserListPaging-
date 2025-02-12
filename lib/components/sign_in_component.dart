import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:owwn_coding_challenge/helpers/routing_helper.dart';
import 'package:provider/provider.dart';
import 'package:user_list_core/bloc/base_event/base_event.dart';
import 'package:user_list_core/bloc/base_state/base_state.dart';
import 'package:user_list_core/bloc/helpers/base_state_helper.dart';
import 'package:user_list_core/bloc/sign_in_bloc.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:user_list_core/di/di.dart';
import 'package:user_list_core/di/env.dart';
import 'package:user_list_core/extensions/string_extensions.dart';
import 'package:user_list_core/get_localization/l10S.dart';
import 'package:user_list_core/helpers/dimensions_helper.dart';
import 'package:user_list_core/helpers/snack_bar_helper.dart';
import 'package:user_list_core/repositories/account_repository.dart';
import 'package:user_list_core/repositories/faked/faked_account_repository.dart';
import 'package:user_list_core/repositories/general_repository.dart';
import 'package:user_list_core/widgets/codefirst_progress_dialog.dart';
import 'package:velocity_x/velocity_x.dart';

class SignInComponent extends HookWidget {
  const SignInComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final generalRepo = useMemoized(() => getIt<GeneralRepository>());
    final bloc = useMemoized(
      () => SignInBloc(
        Env.data.useFakeData
            ? getIt<FakedAccountRepository>()
            : getIt<AccountRepository>(),
        generalRepo,
      ),
    );

    final pr = useMemoized(
      () => ProgressDialog(context, ProgressDialogType.Normal)
        ..setMessage(L10S.Please_Wait.tr),
    );

    useBlocListener<SignInBloc, BaseState<dynamic>>(
      bloc,
      (bloc, current, context) {
        current.maybeMap(
          loadedSuccessfully: (state) async {
            generalRepo.setLoggedUser(state.data as SignInResponse);
            RoutingHelper.startHomeComponent();
          },
          orElse: () => {BaseStateHelper.bindEitherBaseState(current, pr)},
        );
      },
    );

    final memoModel = useMemoized(() => SignInModel(email: "xyz@gmail.com"));

    final formKey = useMemoized(() => GlobalKey<FormState>());

    return Scaffold(
      appBar: AppBar(
        title: Text(L10S.SignIn.tr),
      ),
      body: ProxyProvider0<SignInModel>(
        create: (context) => memoModel,
        update: (context, value) => value ?? memoModel,
        child: Consumer<SignInModel>(
          builder: (context, model, child) {
            return SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: Get.height,
                    color: Get.theme.colorScheme.surface,
                  ),
                  // Image(
                  //   image: const AssetImage(ImageAssetsHelper.icLoginBg),
                  //   // width: 10 * Get.width / 10,
                  //   height: 55.h, // Get.height / ,
                  //   // fit: BoxFit.contain,
                  // ).p(DimensionsHelper.paddingMD).centered(),
                  Positioned(
                    bottom: 0.0,
                    top: Get.height / 4,
                    // height: 5.7 * Get.height / 10,
                    width: Get.width,
                    child: Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      // child: FittedBox(
                      child: GFCard(
                        // height: 5.7 * Get.height / 10,

                        boxFit: BoxFit.fitWidth,
                        margin: EdgeInsets.zero,
                        // imageOverlay:
                        //     AssetImage(MainImageAssetsHelper.icArrowBack24dp),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(
                              DimensionsHelper.cardRaduisMXLg,
                            ),
                          ),
                        ),
                        content: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              L10S.Welcome_to_owwn_challenge.tr,
                              style: Get.textTheme.headlineSmall?.copyWith(
                                fontFamily: "Aeonik",
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              ),
                            ).p(DimensionsHelper.paddingLg),
                            TextFormField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textInputAction: TextInputAction.next,
                              style: Get.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                // height: 2,
                              ),
                              decoration: InputDecoration(
                                labelText: L10S.Email.tr,
                                // hintText: L10S.Email.tr,
                                // isDense: true, // important line
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 16),
                              ),
                              controller:
                                  TextEditingController(text: model.email),
                              onChanged: (newValue) => model.email = newValue,
                              validator: (value) {
                                if (value.isEmptyOrNull) {
                                  return L10S.Please_enter_email_address.tr;
                                } else if (!value.isValidEmail()) {
                                  return L10S
                                      .Please_enter_valid_email_address.tr;
                                }
                                return null;
                              },
                            ).p(DimensionsHelper.paddingSM),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                L10S.Forgot_your_password.tr,
                                style: Get.textTheme.titleMedium?.copyWith(
                                  color: Get.textTheme.titleMedium?.color
                                      ?.withValues(alpha: 0.5607843137254902),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                                .onTap(
                                  () {},
                                )
                                .pOnly(
                                  top: DimensionsHelper.paddingMD,
                                  bottom: DimensionsHelper.paddingLg,
                                  left: DimensionsHelper.paddingMD,
                                  right: DimensionsHelper.paddingMD,
                                ),
                            GFButton(
                              text: L10S.SignIn.tr,
                              onPressed: () {
                                if (formKey.currentState?.validate() ?? false) {
                                  FocusScope.of(context).unfocus();
                                  bloc.add(BaseEventAuth(model.email));
                                }
                              },
                            ).p(DimensionsHelper.paddingMD),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: L10S.DoNotHaveAnAccount.tr,
                                style: Get.textTheme.titleMedium?.copyWith(
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                    text: " ${L10S.SignUp.tr}",
                                    style: Get.textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        SnackBarHelper.errorSnackBar(
                                          L10S.SignUp.tr,
                                          "Not implemented yet",
                                        );
                                      },
                                  ),
                                  TextSpan(text: "\n ${L10S.OrLoginWith.tr}"),
                                ],
                              ),
                            ).pOnly(
                              top: DimensionsHelper.paddingMD,
                              bottom: DimensionsHelper.paddingMD,
                              left: DimensionsHelper.paddingMD,
                              right: DimensionsHelper.paddingMD,
                            ),
                          ],
                        ),
                      ),
                      // ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
