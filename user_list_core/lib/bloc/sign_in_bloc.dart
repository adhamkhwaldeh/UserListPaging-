import 'dart:async';

import 'package:common_library/bloc/base/base_bloc.dart';
import 'package:common_library/bloc/base_event/base_event.dart';
import 'package:common_library/bloc/base_state/base_state.dart';
import 'package:user_list_core/data/posts/refresh_model.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:user_list_core/repositories/account_repository.dart';
import 'package:user_list_core/repositories/general_repository.dart';

import 'package:common_library/bloc/base_state/base_state_observable.dart';
import 'package:common_library/bloc/base_state/base_state_observable2.dart';
// import 'package:property_man_core/data/model/login_model.dart';
// import 'package:property_man_core/repositories/account_repository.dart';
// import 'package:property_man_core/repositories/general_repository.dart';

class SignInBloc extends BaseBloc<BaseEvent, BaseState> {
  final AccountRepository repository;

  final GeneralRepository generalRepository;

  SignInBloc(this.repository, this.generalRepository)
      : super(const BaseStateInitial());

  @override
  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    yield* event.maybeMap(
      auth: (value) {
        return BaseStateObservable2.observeRequestFunction<SignInResponse>(
            repository.auth(signInModel: SignInModel(email: value.email)));
      },
      refresh: (value) {
        return BaseStateObservable2.observeRequestFunction<SignInResponse>(
            repository.refresh(
                refreshModel:
                    RefreshModel(refresh_token: value.refresh_token)));
      },
      orElse: () =>
          BaseStateObservable.yieldOneState(const BaseState.initial()),
    );
  }

  @override
  void dispose() {}
}
