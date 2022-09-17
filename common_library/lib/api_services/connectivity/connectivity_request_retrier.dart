import 'dart:async';

import 'package:connectivity/connectivity.dart';

class ConnectivityRequestRetrier {
  final Connectivity connectivity;

  ConnectivityRequestRetrier({
    required this.connectivity,
  });

  scheduleRequestRetry1<T>(Function onConnect) async {
    late StreamSubscription streamSubscription;
    final responseCompleter = Completer<void>();

    streamSubscription = connectivity.onConnectivityChanged.listen(
      (connectivityResult) async {
        // We're connected either to WiFi or mobile data
        if (connectivityResult != ConnectivityResult.none) {
          // Ensure that only one retry happens per connectivity change by cancelling the listener
          streamSubscription.cancel();
          // Copy & paste the failed request's data into the new request
          onConnect.call();
        }
      },
    );
    return responseCompleter.future;
  }
}

