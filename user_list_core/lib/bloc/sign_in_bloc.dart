import 'dart:core';
import 'package:user_list_core/bloc/base/base_bloc.dart';
import 'package:user_list_core/bloc/base_event/base_event.dart';
import 'package:user_list_core/bloc/base_state/base_state.dart';
import 'package:user_list_core/bloc/helpers/base_state_helper.dart';
import 'package:user_list_core/data/posts/refresh_model.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/repositories/general_repository.dart';

import 'package:user_list_core/repositories/implementations/iaccount_repository.dart';

class SignInBloc extends BaseBloc<BaseEvent, BaseState> {
  final IAccountRepository repository;

  final GeneralRepository generalRepository;

  SignInBloc(this.repository, this.generalRepository)
      : super(const BaseStateInitial()) {
    on<BaseEventAuth>(
      (event, emit) async {
        try {
          emit(const BaseStateProgress());
          var dt = await repository.auth(
              signInModel: SignInModel(email: event.email));
          emit(const BaseStateProgressDismiss());

          emit(BaseStateLoadedSuccessfully(data: dt));
        } catch (error) {
          emit(BaseStateHelper.getEither(error as Exception));
        }
      },
    );

    on<BaseEventRefresh>(
      (event, emit) async {
        try {
          emit(const BaseStateProgress());
          var dt = await repository.refresh(
              refreshModel: RefreshModel(refresh_token: event.refresh_token));
          emit(const BaseStateProgressDismiss());

          emit(BaseStateLoadedSuccessfully(data: dt));
        } catch (error) {
          emit(BaseStateHelper.getEither(error as Exception));
        }
      },
    );
  }

  @override
  void dispose() {}
}
