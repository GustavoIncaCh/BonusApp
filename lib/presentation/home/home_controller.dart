import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import 'package:bonus_app/routes/app_pages.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController firstcontroller;
  late AnimationController secondcontroller;
  late AnimationController thirdcontroller;
  late Animation<Offset> firstanimation;
  late Animation<Offset> secondanimation;
  late Animation<Offset> thirdanimation;

  @override
  void onInit() {
    firstcontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    final curve1 =
        CurvedAnimation(curve: Curves.decelerate, parent: firstcontroller);
    firstanimation =
        Tween<Offset>(begin: const Offset(0.35, 0.00), end: Offset.zero)
            .animate(curve1);
    secondcontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    final curve2 =
        CurvedAnimation(curve: Curves.decelerate, parent: secondcontroller);
    secondanimation =
        Tween<Offset>(begin: const Offset(0.40, 0.00), end: Offset.zero)
            .animate(curve2);
    thirdcontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1400));
    final curve3 =
        CurvedAnimation(curve: Curves.decelerate, parent: thirdcontroller);
    thirdanimation =
        Tween<Offset>(begin: const Offset(0.40, 0.00), end: Offset.zero)
            .animate(curve3);
    super.onInit();
  }

  void logOut() async {
    await Get.offAndToNamed(AppRoutes.login);
  }

  void goToHistory() {
    Get.toNamed(AppRoutes.history);
  }

  void goToPointCard() {
    Get.toNamed(AppRoutes.pointCard);
  }

  void goToMap() {
    Get.toNamed(AppRoutes.map);
  }

  void goToUser() {
    Get.toNamed(AppRoutes.user);
  }

  void goToNotifications() {
    Get.toNamed(AppRoutes.notificactions);
  }

  void goToInformationEarnPoints() {
    Get.toNamed(AppRoutes.informationEarnPoints);
  }

  void goToInformationSpendPoints() {
    Get.toNamed(AppRoutes.informationSpendPoints);
  }

  void share() {
    Share.share('Mi código "Cerámica Center" es: 1245782187');
  }

  @override
  void onClose() {
    firstcontroller.dispose();
    secondcontroller.dispose();
    thirdcontroller.dispose();
    super.onClose();
  }
}
