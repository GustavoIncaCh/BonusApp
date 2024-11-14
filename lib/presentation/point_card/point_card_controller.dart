import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PointCardController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController firstAnimationController;
  late AnimationController secondAnimationController;
  late AnimationController thirdsecondAnimationController;
  late Animation<Offset> firstAnimation;
  late Animation<Offset> secondAnimation;
  late Animation<Offset> thirdAnimation;

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
    thirdsecondAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1400));
    final curve3 = CurvedAnimation(
        curve: Curves.decelerate, parent: thirdsecondAnimationController);
    thirdAnimation =
        Tween<Offset>(begin: const Offset(0.40, 0.00), end: Offset.zero)
            .animate(curve3);
    super.onInit();
  }

  @override
  void onClose() {
    firstAnimationController.dispose();
    secondAnimationController.dispose();
    thirdsecondAnimationController.dispose();
    super.onClose();
  }
}
