import 'package:flutter/material.dart';
import '../connectivity/connectivity_controller.dart';
import '../connectivity/connectivity_state.dart';

class ConnectivityBanner extends StatelessWidget {
  final ConnectivityController controller;

  const ConnectivityBanner({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        if (controller.status == ConnectivityStatus.online) {
          return const SizedBox.shrink();
        }

        return Container(
          width: double.infinity,
          color: Colors.red,
          padding: const EdgeInsets.all(8),
          child: const SafeArea(
            child: Text(
              "No Internet Connection",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
