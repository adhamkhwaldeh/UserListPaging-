import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:common_library/bloc/helpers/base_future_observable.dart';
import 'package:common_library/data/responses/base_error_response.dart';
import 'package:dio/dio.dart';

import 'base_state.dart';

class BaseStateObservable2 {
  static Stream<BaseState<T>> observeRequestFunction<T>(
    Future<T> request, {
    Future<BaseState<T>> Function(T data)? successCall,
  }) async* {
    yield const BaseStateProgress();
    try {
      BaseState<T>? returnState;
      await request.then(
        (T value) async {
          if (value != null) {
            if (successCall != null) {
              await successCall.call(value).then((BaseState<T> call) {
                // yield call;
                returnState = call;

                // BaseStateLoadedSuccessfully<T>(data: value.data);
              }); //.((value2)) ;
            } else {
              returnState = BaseStateLoadedSuccessfully<T>(data: value);
            }
          } else {
            returnState = const BaseStateInternalServerError(error: "");
          }
        },
        onError: (e) async {
          if (e is DioError) {
            if (e.type == DioErrorType.response) {
              if (e.response?.statusCode == HttpStatus.unauthorized) {
                BaseErrorResponse res = BaseErrorResponse.fromJson(
                    Map<String, dynamic>.from(e.response?.data));
                returnState = BaseStateNotAuthorize(error: res.message ?? "");
              } else if (e.response?.statusCode == HttpStatus.notFound) {
                BaseErrorResponse res = BaseErrorResponse.fromJson(
                    Map<String, dynamic>.from(e.response?.data));
                returnState = BaseStateNotAuthorize(error: res.message ?? "");
              } else if (e.response?.statusCode == HttpStatus.badRequest) {
                BaseErrorResponse res = BaseErrorResponse.fromJson(
                    Map<String, dynamic>.from(e.response?.data));
                returnState = BaseStateNotAuthorize(error: res.message ?? "");
              }
            } else if (e.type == DioErrorType.other) {
              returnState = const BaseStateNoInternetConnection();
            }
          } else {
            returnState = BaseStateInternalServerError(error: e.toString());
          }
        },
      );
      yield const BaseStateProgressDismiss();
      if (returnState != null) yield returnState!;
    } catch (error) {
      yield const BaseStateProgressDismiss();
      yield BaseStateFailure(error: error.toString());
    }
  }

  static Stream<BaseState<T>> observeRequestFunctionWithoutBaseResponse<T>(
    Future<List<T>> request, {
    Future<BaseState<T>> Function(T data)? successCall,
  }) async* {
    yield const BaseStateProgress();
    Either<Exception, List<T>> result =
        await BaseFutureObservable.safeCall<List<T>>(request);
    BaseStateProgressDismiss<T>();
    if (result.isLeft()) {
      yield BaseStateInternalServerError<T>(error: "");
    } else if (result.isRight()) {
      yield BaseState.listLoadedSuccessfully(
          data: result.getOrElse(() => []), lastPage: true);
    }
  }

  static Stream<BaseState<T>> observeRequestFunctionNormal<T>(
    Future<List<T>> request, {
    Future<BaseState<T>> Function(T data)? successCall,
  }) async* {
    yield const BaseStateProgress();
    try {
      BaseState<T>? returnState;
      await request.then((List<T> value) async {
        returnState =
            BaseStateListLoadedSuccessfully<T>(data: value, lastPage: true);
      }, onError: (e) async {
        returnState = BaseStateInternalServerError(error: e.toString());
      });
      yield const BaseStateProgressDismiss();
      if (returnState != null) yield returnState!;
    } catch (error) {
      yield BaseStateFailure(error: error.toString());
    }
  }

  static Stream<BaseState<T>> yieldOneState<T>(BaseState<T> baseState) async* {
    yield baseState;
  }
}
