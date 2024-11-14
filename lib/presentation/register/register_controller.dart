import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RegisterController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController titlecontroller;
  late AnimationController bodycontroller;
  late Animation<Offset> titleanimation;
  late Animation<Offset> bodyanimation;

  final registerFormKey = GlobalKey<FormBuilderState>();
  RxBool hidePassword = true.obs;
  RxBool hidePassword2 = true.obs;

  @override
  void onInit() {
    titlecontroller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    bodycontroller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    titleanimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
      CurvedAnimation(parent: titlecontroller, curve: Curves.decelerate),
    );
    bodyanimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
      CurvedAnimation(parent: bodycontroller, curve: Curves.decelerate),
    );
    super.onInit();
  }

  void register({required email, required password, required repeatPassword}) {}

  @override
  void onClose() {
    titlecontroller.dispose();
    bodycontroller.dispose();
    super.onClose();
  }
}
