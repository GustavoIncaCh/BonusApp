import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NotificationsController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController firstAnimationController;
  late AnimationController secondAnimationController;
  late Animation<Offset> firstanimation;
  late Animation<Offset> secondanimation;

  RxList<Notify> notifications = RxList([
    Notify(
      type: 0,
      title: '150 Puntos proximos a vencer',
      date: DateTime(2023, 11, 05, 10, 30, 0),
    ),
    Notify(
      type: 1,
      title: 'Nuevos puntos disponibles',
      date: DateTime(2023, 11, 05, 15, 30, 0),
    ),
    Notify(
      type: 1,
      title: 'Cheque cobrado',
      date: DateTime(2023, 11, 04, 15, 30, 0),
    ),
  ]);

  @override
  void onInit() {
    firstAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    final curve1 = CurvedAnimation(
        curve: Curves.decelerate, parent: firstAnimationController);
    firstanimation =
        Tween<Offset>(begin: const Offset(0.35, 0.00), end: Offset.zero)
            .animate(curve1);
    secondAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    final curve2 = CurvedAnimation(
        curve: Curves.decelerate, parent: secondAnimationController);
    secondanimation =
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

class Notify {
  final int type;
  final String title;
  final DateTime date;

  Notify({
    required this.type,
    required this.title,
    required this.date,
  });
}
