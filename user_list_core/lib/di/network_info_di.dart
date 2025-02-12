import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:user_list_core/api_services/connectivity/connectivity_request_retrier.dart';

@module
abstract class NetworkInfoDi {
  // @lazySingleton
  // DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @LazySingleton()
  ConnectivityRequestRetrier retryConnection(Connectivity connectivity) {
    return ConnectivityRequestRetrier(
      connectivity: connectivity,
    );
  }
}
