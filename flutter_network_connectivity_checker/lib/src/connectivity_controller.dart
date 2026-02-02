import 'dart:async';
import 'package:flutter/material.dart';
import 'connectivity_service.dart';
import 'connectivity_state.dart';

class ConnectivityController extends ChangeNotifier {
  final ConnectivityService _service = ConnectivityService();

  ConnectivityStatus _status = ConnectivityStatus.online;
  ConnectivityStatus get status => _status;

  StreamSubscription? _subscription;

  void init() async {
    _status = await _service.checkCurrentStatus();
    notifyListeners();

    _subscription = _service.connectivityStream.listen((event) {
      _status = event;
      notifyListeners();
    });
  }

  void disposeController() {
    _subscription?.cancel();
  }
}
