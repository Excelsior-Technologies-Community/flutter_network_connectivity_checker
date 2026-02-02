import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'connectivity_state.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();

  Stream<ConnectivityStatus> get connectivityStream async* {
    await for (final result in _connectivity.onConnectivityChanged) {
      if (result.contains(ConnectivityResult.none)) {
        yield ConnectivityStatus.offline;
      } else {
        yield ConnectivityStatus.online;
      }
    }
  }

  Future<ConnectivityStatus> checkCurrentStatus() async {
    final result = await _connectivity.checkConnectivity();
    if (result.contains(ConnectivityResult.none)) {
      return ConnectivityStatus.offline;
    }
    return ConnectivityStatus.online;
  }
}
