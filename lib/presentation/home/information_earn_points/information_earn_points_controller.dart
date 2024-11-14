import 'package:get/get.dart';
import 'package:flutter/material.dart';

class InformationEarnPointsController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController firstAnimationController;
  late AnimationController secondAnimationController;
  late Animation<Offset> firstAnimation;
  late Animation<Offset> secondAnimation;

  @override
  void onInit() {
    firstAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    final curve1 = CurvedAnimation(
        curve: Curves.decelerate, parent: firstAnimationController);
    firstAnimation =
        Tween<Offset>(begin: const Offset(0.35, 0.00), end: Offset.zero)
            .animate(curve1);
    secondAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    final curve2 = CurvedAnimation(
        curve: Curves.decelerate, parent: secondAnimationController);
    secondAnimation =
        Tween<Offset>(begin: const Offset(0.40, 0.00), end: Offset.zero)
            .animate(curve2);
    super.onInit();
  }

  @override
  void onClose() {
    firstAnimationController.dispose();
    secondAnimationController.dispose();
    super.onClose();
  }
}
