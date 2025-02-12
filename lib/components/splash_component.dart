import 'dart:async';

import 'package:flutter/material.dart'; // gegy checkin
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:owwn_coding_challenge/helpers/routing_helper.dart';
import 'package:user_list_core/bloc/base_event/base_event.dart';
import 'package:user_list_core/bloc/base_state/base_state.dart';
import 'package:user_list_core/bloc/helpers/base_state_helper.dart';
import 'package:user_list_core/bloc/sign_in_bloc.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:user_list_core/di/di.dart';
import 'package:user_list_core/di/env.dart';
import 'package:user_list_core/get_localization/l10S.dart';
import 'package:user_list_core/repositories/account_repository.dart';
import 'package:user_list_core/repositories/faked/faked_account_repository.dart';
import 'package:user_list_core/repositories/general_repository.dart';
import 'package:user_list_core/widgets/codefirst_progress_dialog.dart';

class SplashComponent extends HookWidget {
  const SplashComponent({super.key});

  Future<Timer> startTime(
    GeneralRepository generalRepo,
    SignInBloc bloc,
  ) async {
    final SignInResponse? user = await generalRepo.getLoggedUser();

    final isLogged = user?.refresh_token != null;

    return Timer(
      const Duration(seconds: 4),
      () {
        if (isLogged) {
          bloc.add(BaseEventRefresh(user!.refresh_token));
        } else {
          RoutingHelper.startSignInComponent();
        }
      },
    );
  }

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

    useEffect(
      () {
        startTime(generalRepo, bloc);
        return () {};
      },
      [],
    );

    useBlocListener<SignInBloc, BaseState>(
      bloc,
      (bloc, current, context) {
        current.maybeMap(
          notAuthorize: (value) {
            generalRepo.clearLoggedUser();
            RoutingHelper.startSignInComponent();
          },
          loadedSuccessfully: (state) async {
            generalRepo.setLoggedUser(state.data as SignInResponse);
            RoutingHelper.startHomeComponent();
          },
          orElse: () => {BaseStateHelper.bindEitherBaseState(current, pr)},
        );
      },
    );

    return Scaffold(body: Container());
  }
}
