import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:bonus_app/presentation/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final _controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: double.maxFinite,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
