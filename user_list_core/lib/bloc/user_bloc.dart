import 'dart:io';
import 'package:user_list_core/bloc/base/base_bloc.dart';
import 'package:user_list_core/bloc/base_event/base_event.dart';
import 'package:user_list_core/bloc/base_state/base_state.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';
import 'package:user_list_core/repositories/user_repository.dart';
import 'package:dio/dio.dart';

class UserBloc extends BaseBloc<BaseEvent, BaseState> {
  final UserRepository repository;

  UserBloc(this.repository) : super(const BaseStateInitial()) {
    on<BaseEventLoadPagingList2>(
      (event, emit) async {
        emit(const BaseStateProgress());
        try {
          //Load the data from the api
          UserListResponse dt =
              await repository.pageList(event.page, event.limit);
          emit(const BaseStateProgressDismiss());
          if (dt.users.isNotEmpty) {
            //TODO need to be checked
            // if the data loaded successfully I'm update both the UI and cacheRepository
            emit(
              BaseStateListLoadedSuccessfully(data: dt.users, lastPage: false),
            );
          } else {
            emit(const BaseStateNoDataFound());
          }
        } catch (error) {
          if (isClosed) return;
          emit(const BaseStateProgressDismiss());

          if (error is DioException) {
            switch (error.type) {
              case DioExceptionType.connectionTimeout:
              case DioExceptionType.sendTimeout:
              case DioExceptionType.receiveTimeout:
              case DioExceptionType.connectionError:
              case DioExceptionType.cancel:
                emit(const BaseStateNoInternetConnection());
              case DioExceptionType.badCertificate:
                emit(BaseStateNotAuthorize(
                    error: error.response?.statusMessage?.toString() ?? ""));

              case DioExceptionType.badResponse:
                if (error.response?.statusCode == HttpStatus.unauthorized) {
                  emit(BaseStateNotAuthorize(
                      error: error.response?.statusMessage?.toString() ?? ""));
                } else if (error.response?.statusCode == HttpStatus.notFound) {
                  emit(const BaseStateNoDataFound());
                } else if (error.response?.statusCode ==
                    HttpStatus.badRequest) {
                  emit(BaseStateInternalServerError(
                      error: error.response?.statusMessage?.toString() ?? ""));
                }

              case DioExceptionType.unknown:
                emit(
                  BaseStateFailure(
                      error: error.response?.statusMessage?.toString() ?? ""),
                );
            }
          } else {
            emit(BaseStateFailure(error: error.toString()));
          }
        }
      },
    );
  }

  @override
  void dispose() {}
}
