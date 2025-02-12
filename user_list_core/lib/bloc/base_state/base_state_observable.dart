import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:user_list_core/bloc/helpers/base_future_observable.dart';

import 'base_state.dart';

class BaseStateObservable {
  static Stream<BaseState<T>> observeRequestFunction<T>(
    Future<T> request, {
    Future<BaseState<T>> Function(T data)? successCall,
  }) async* {
    yield const BaseStateProgress();
    try {
      BaseState<T>? returnState;
      await request.then((T value) async {
        // yield BaseStateProgressDismiss();
        if (value != null) {
          if (successCall != null) {
            await successCall.call(value).then((BaseState<T> call) {
              // yield call;
              returnState = call;

              // BaseStateLoadedSuccessfully<T>(data: value.data);
            }); //.((value2)) ;
            // async {
            //   returnState = BaseStateLoadedSuccessfully<T>(data: value.data);
            // });
            // await successCall.call(value.data);
          } else {
            returnState = BaseStateLoadedSuccessfully<T>(data: value);
          }
        } else {
          returnState = const BaseStateInternalServerError(error: "");
        }
      }, onError: (e) async {
        returnState = BaseStateInternalServerError(error: e.toString());
      });
      yield const BaseStateProgressDismiss();
      if (returnState != null) yield returnState!;
    } catch (error) {
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
        // yield BaseStateProgressDismiss();
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

  // Stream<BaseState<T>> observeRequestFunctionChopper(
  //     Future<Response<BaseResponse<T>>> request) async* {
  //   yield BaseStateProgress();
  //   try {
  //     BaseState<T> returnState;
  //     await request.then((Response<BaseResponse<T>> value) async {
  //       if (value.body.isOk) {
  //         if (value.body.data != null) {
  //           returnState = BaseStateLoadedSuccessfully<T>(data: value.body.data);
  //         } else {
  //           returnState = BaseStateInternalServerError(error: "");
  //         }
  //       } else {
  //         returnState = BaseStateInternalServerError(error: "");
  //       }
  //     }, onError: (e) async {
  //       returnState = BaseStateInternalServerError(error: e.toString());
  //       print("");
  //     });
  //     yield BaseStateProgressDismiss();
  //     yield returnState;
  //   } catch (error) {
  //     yield BaseStateFailure(error: error.toString());
  //   }
  // }

}
