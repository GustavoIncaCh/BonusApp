import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HistoryController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController firstAnimationController;
  late AnimationController secondAnimationController;
  late Animation<Offset> firstanimation;
  late Animation<Offset> secondanimation;

  RxList<History> historicNow = RxList([
    History(
      invoice: 'F011-0089451',
      reason: 'Cliente: Annabeth Chase',
      point: 315,
      add: true,
      date: DateTime.now(),
    ),
    History(
      invoice: 'F011-0089452',
      reason: 'Cobro de cheque',
      point: 100,
      add: false,
      date: DateTime.now(),
    ),
  ]);

  RxList<History> historic = RxList([
    History(
      invoice: 'F011-0089440',
      reason: 'Cliente: Jason Grace',
      point: 10,
      add: true,
      date: DateTime(2023, 11, 10, 15, 30, 0),
    ),
    History(
      invoice: 'F011-0089421',
      reason: 'Cliente: Nico DiAngelo',
      point: 100,
      add: true,
      date: DateTime(2023, 11, 05, 15, 30, 0),
    ),
    History(
      invoice: 'F011-0089410',
      reason: 'Cobro de cheque',
      point: 55,
      add: false,
      date: DateTime(2023, 11, 04, 15, 30, 0),
    ),
  ]);

  DateTime now = DateTime.now();

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

class History {
  final String invoice;
  final String reason;
  final int point;
  final bool add;
  final DateTime date;

  History({
    required this.invoice,
    required this.reason,
    required this.point,
    required this.add,
    required this.date,
  });
}
