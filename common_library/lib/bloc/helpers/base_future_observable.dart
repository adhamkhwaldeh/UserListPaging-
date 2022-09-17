import 'package:dartz/dartz.dart';

class BaseFutureObservable {
  static Future<Either<Exception, T>> safeCall<T>(Future<T> request) async {
    try {
      late Either<Exception, T> response;
      await request
          // .catchError((error:Ex) => {response = Left(error)})
          .then((value) => {response = Right(value)});
      return response;
    } on Exception catch (e) {
      return (Left(e));
    }
  }
}
