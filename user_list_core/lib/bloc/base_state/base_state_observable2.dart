import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:user_list_core/bloc/helpers/base_future_observable.dart';
import 'package:user_list_core/data/responses/base_error_response.dart';
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
          if (e is DioException) {
            switch(e.type){
              
              case DioExceptionType.connectionTimeout:
             case DioExceptionType.sendTimeout:
                           case DioExceptionType.receiveTimeout:
              case DioExceptionType.cancel:
                            case DioExceptionType.connectionError:
        returnState = const BaseStateNoInternetConnection();
           
              case DioExceptionType.badCertificate:
               BaseErrorResponse res = BaseErrorResponse.fromJson(
                    Map<String, dynamic>.from(e.response?.data));
                returnState = BaseStateNotAuthorize(error: res.message ?? "");
                
              case DioExceptionType.badResponse:
                  returnState =  BaseStateFailure(error: e.error.toString());
              case DioExceptionType.unknown:
                      returnState = BaseStateInternalServerError(error: e.toString());
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

  static BaseState<T> getEither<T>(Exception error){

if (error is DioException) {
            switch (error.type) {
              case DioExceptionType.connectionTimeout:
              case DioExceptionType.sendTimeout:
              case DioExceptionType.receiveTimeout:
              case DioExceptionType.connectionError:
              case DioExceptionType.cancel:
               return  const BaseStateNoInternetConnection();
              case DioExceptionType.badCertificate:
                return BaseStateNotAuthorize(
                    error: error.response?.statusMessage?.toString() ?? "");

              case DioExceptionType.badResponse:
                if (error.response?.statusCode == HttpStatus.unauthorized) {
                  return BaseStateNotAuthorize(
                      error: error.response?.statusMessage?.toString() ?? "");
                } else if (error.response?.statusCode == HttpStatus.notFound) {
                  return const BaseStateNoDataFound();
                } else if (error.response?.statusCode ==
                    HttpStatus.badRequest) {
                  return BaseStateInternalServerError(
                      error: error.response?.statusMessage?.toString() ?? "");
                }
   return
                  BaseStateFailure(
                      error: error.response?.statusMessage?.toString() ?? "");
              case DioExceptionType.unknown:
                return
                  BaseStateFailure(
                      error: error.response?.statusMessage?.toString() ?? "");
                
            }
          } else {
            return BaseStateFailure(error: error.toString());
          }
  }


}
