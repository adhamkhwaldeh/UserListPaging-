import 'dart:async';

import 'package:common_library/bloc/base_event/base_event.dart';
import 'package:common_library/bloc/base_state/base_state.dart';
import 'package:common_library/bloc/helpers/base_state_helper.dart';
import 'package:common_library/di/di.dart';
import 'package:flutter/material.dart'; // gegy checkin
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks_bloc/flutter_hooks_bloc.dart';
import 'package:owwn_coding_challenge/components/sign_in_component.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:owwn_coding_challenge/helpers/routing_helper.dart';
import 'package:user_list_core/bloc/sign_in_bloc.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:user_list_core/get_localization/l10S.dart';
import 'package:user_list_core/repositories/account_repository.dart';
import 'package:user_list_core/repositories/general_repository.dart';
import 'package:common_library/widgets/codefirst_progress_dialog.dart';
import 'package:get/get.dart';

class SplashComponent extends HookWidget {
  SplashComponent({super.key});

  startTime(GeneralRepository generalRepo, SignInBloc bloc) async {
    SignInResponse? user = await generalRepo.getLoggedUser();

    var isLogged = user?.refresh_token != null;

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
    final generalRepo = getIt<GeneralRepository>();
    final bloc =
        useMemoized(() => SignInBloc(getIt<AccountRepository>(), generalRepo));

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

    final signInBlocState = useBloc<SignInBloc, BaseState>(
      bloc: bloc,
      onEmitted: (context, previous, current) {
        current.maybeMap(
          loadedSuccessfully: (state) async {
            generalRepo.setLoggedUser(state.data as SignInResponse);
            RoutingHelper.startHomeComponent();
          },
          orElse: () => {BaseStateHelper.bindEitherBaseState(current, pr)},
        );
        return false;
      },
    );

    // final user = useFuture(generalRepo.getLoggedUser(), initialData: null);

    // useEffect(
    //   () {
    //     if (user.data?.refresh_token != null) {
    //       bloc.add(BaseEventRefresh(user.data!.refresh_token));
    //     } else {
    //       // RoutingHelper.startSignInComponent();
    //     }
    //     return () {};
    //   },
    //   [user.data],
    // );

    return Scaffold(body: Container());
  }
}
