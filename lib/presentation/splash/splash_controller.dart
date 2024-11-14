import 'package:get/get.dart';

import 'package:bonus_app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed(AppRoutes.login);
    super.onReady();
  }
}
