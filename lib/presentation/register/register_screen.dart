import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:bonus_app/routes/app_pages.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:bonus_app/presentation/register/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final _controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    _controller.bodycontroller.forward(from: 0.00);
    _controller.titlecontroller.forward(from: 0.00);

    return Scaffold(
      body: Stack(
        children: [
          Container(color: Theme.of(context).colorScheme.primaryContainer),
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      // topRight: Radius.circular(15),
                    ),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Card(
              elevation: 3,
              color: Colors.white,
              surfaceTintColor: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 15),
                      SlideTransition(
                        position: _controller.titleanimation,
                        child: Column(
                          children: [
                            Text(
                              'Registrate',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            Text(
                              'Ingresa tus datos y registrate',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      SlideTransition(
                        position: _controller.bodyanimation,
                        child: FormBuilder(
                          key: _controller.registerFormKey,
                          child: Column(
                            children: [
                              FormBuilderTextField(
                                name: 'name',
                                style: const TextStyle(fontSize: 14),
                                keyboardType: TextInputType.text,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(
                                    errorText: 'Ingrese su nombre',
                                  )
                                ]),
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: "Nombre",
                                  prefixIcon: Icon(
                                    Icons.person_rounded,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  border: const OutlineInputBorder(),
                                  // enabledBorder: OutlineInputBorder(
                                  //   borderSide: BorderSide(color: Colors.grey.shade400),
                                  // ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              FormBuilderTextField(
                                name: 'lastname',
                                style: const TextStyle(fontSize: 14),
                                keyboardType: TextInputType.text,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(
                                    errorText: 'Ingrese sus apellidos',
                                  )
                                ]),
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: "Apellidos",
                                  prefixIcon: Icon(
                                    Icons.person_rounded,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  border: const OutlineInputBorder(),
                                  // enabledBorder: OutlineInputBorder(
                                  //   borderSide: BorderSide(color: Colors.grey.shade400),
                                  // ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              FormBuilderTextField(
                                name: 'phone',
                                style: const TextStyle(fontSize: 14),
                                keyboardType: TextInputType.text,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(
                                    errorText: 'Ingrese su teléfono',
                                  )
                                ]),
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: "Teléfono",
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  border: const OutlineInputBorder(),
                                  // enabledBorder: OutlineInputBorder(
                                  //   borderSide: BorderSide(color: Colors.grey.shade400),
                                  // ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              FormBuilderTextField(
                                name: 'email',
                                style: const TextStyle(fontSize: 14),
                                keyboardType: TextInputType.emailAddress,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(
                                      errorText:
                                          'Ingrese su correo electrónico')
                                ]),
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: "Correo electrónico",
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  border: const OutlineInputBorder(),
                                  // enabledBorder: OutlineInputBorder(
                                  //   borderSide: BorderSide(color: Colors.grey.shade400),
                                  // ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              Obx(() {
                                return FormBuilderTextField(
                                  name: 'password',
                                  style: const TextStyle(fontSize: 14),
                                  obscureText: _controller.hidePassword.value,
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                        errorText: 'Ingrese su contraseña')
                                  ]),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: "Contraseña",
                                    prefixIcon: Icon(
                                      Icons.key,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _controller.hidePassword.value
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      onPressed: () {
                                        _controller.hidePassword.value =
                                            !_controller.hidePassword.value;
                                      },
                                    ),
                                    border: const OutlineInputBorder(),
                                    // enabledBorder: OutlineInputBorder(
                                    //   borderSide:
                                    //       BorderSide(color: Colors.grey.shade400),
                                    // ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 12,
                                    ),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SlideTransition(
                        position: _controller.bodyanimation,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: FilledButton(
                            child: const Text('Registrarse'),
                            onPressed: () async {
                              // if (_controller.registerFormKey.currentState
                              //         ?.saveAndValidate() ??
                              //     false) {
                              //   var values = _controller
                              //       .registerFormKey.currentState!.value;
                              //   _controller.register(
                              //     email: values['email'].trim() ?? '',
                              //     password: values['password'].trim() ?? '',
                              //     repeatPassword:
                              //         values['repeatPassword'].trim() ?? '',
                              //   );
                              // }
                              await Get.offAndToNamed(AppRoutes.home);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      SlideTransition(
                        position: _controller.bodyanimation,
                        child: SizedBox(
                          width: double.maxFinite,
                          // child: ElevatedButton(
                          //   child: const Text('Ya tengo una cuenta'),
                          //   onPressed: () => Get.back(),
                          // ),
                          child: OutlinedButton(
                            child: const Text('Ya tengo una cuenta'),
                            onPressed: () => Get.back(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
