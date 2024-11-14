import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:bonus_app/presentation/user/user_controller.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  final _controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    _controller.bodycontroller.forward(from: 0.00);
    _controller.titlecontroller.forward(from: 0.00);

    return Scaffold(
      appBar: AppBar(title: const Text('Perfil de usuario')),
      body: DefaultTabController(
        length: 2,
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(top: 5),
            color: Theme.of(context).colorScheme.primary,
            child: TabBar(
              onTap: (int val) {},
              physics: const AlwaysScrollableScrollPhysics(),
              isScrollable: false,
              indicatorPadding: EdgeInsets.zero,
              // labelColor: Colors.grey.shade300,
              unselectedLabelColor: Colors.grey.shade600,
              dividerColor: Colors.transparent,
              indicator: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 2.0, color: Colors.white),
                ),
              ),
              labelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              indicatorColor: Colors.transparent,
              splashBorderRadius: BorderRadius.circular(20),
              tabs: [
                Container(
                  width: 500,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 5,
                  ),
                  child: const Text(
                    'Información',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const Text(
                    'Contraseña',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              SingleChildScrollView(
                child: Card(
                  elevation: 0,
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: SlideTransition(
                            position: _controller.titleanimation,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  child: ClipOval(
                                      child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    // imageUrl: _controller
                                    //     .currentUserProfile.value!.photo!,
                                    imageUrl:
                                        'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1380&t=st=1701357025~exp=1701357625~hmac=17709dcb3f74768993fed7efd0507f596a2347c40eab0c689be261ac5f5dbdf9',
                                    width: 100,
                                    height: 100,
                                    placeholder: (context, url) => Image.asset(
                                      'assets/images/loading.gif',
                                      fit: BoxFit.cover,
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  )),
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  margin: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    onPressed: () async {
                                      // await _controller.changeUserPhoto();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SlideTransition(
                        position: _controller.bodyanimation,
                        child: FormBuilder(
                          key: _controller.userFormKey,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                FormBuilderTextField(
                                  name: 'name',
                                  initialValue: 'Percy',
                                  style: const TextStyle(fontSize: 14),
                                  keyboardType: TextInputType.text,
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                      errorText: 'Ingrese su nombre',
                                    )
                                  ]),
                                  decoration: const InputDecoration(
                                    isDense: true,
                                    labelText: "Nombre",
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 7,
                                      horizontal: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 18),
                                FormBuilderTextField(
                                  name: 'lastname',
                                  initialValue: 'Jackson',
                                  style: const TextStyle(fontSize: 14),
                                  keyboardType: TextInputType.text,
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                      errorText: 'Ingrese sus apellidos',
                                    )
                                  ]),
                                  decoration: const InputDecoration(
                                    isDense: true,
                                    labelText: "Apellidos",
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 7,
                                      horizontal: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 18),
                                FormBuilderTextField(
                                  name: 'email',
                                  initialValue: 'percyjackson@mail.com',
                                  style: const TextStyle(fontSize: 14),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                      errorText:
                                          'Ingrese su correo electrónico',
                                    )
                                  ]),
                                  decoration: const InputDecoration(
                                    isDense: true,
                                    labelText: "Correo electronico",
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 7,
                                      horizontal: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 18),
                                FormBuilderTextField(
                                  name: 'phone',
                                  initialValue: '926551285',
                                  style: const TextStyle(fontSize: 14),
                                  keyboardType: TextInputType.phone,
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                      errorText: 'Ingrese su teléfono',
                                    )
                                  ]),
                                  decoration: const InputDecoration(
                                    isDense: true,
                                    labelText: "Teléfono",
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 7,
                                      horizontal: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 18),
                                SizedBox(
                                  width: double.infinity,
                                  child: FilledButton(
                                    child: const Text(
                                      'Guardar',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    onPressed: () async {
                                      // if (_controller.userFormKey.currentState
                                      //         ?.saveAndValidate() ??
                                      //     false) {
                                      //   final values = _controller
                                      //       .userFormKey.currentState!.value;
                                      //   printInfo(info: '$values');
                                      // }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Card(
                  elevation: 0,
                  margin: const EdgeInsets.all(15),
                  child: SlideTransition(
                    position: _controller.bodyanimation,
                    child: FormBuilder(
                      key: _controller.passwordFormKey,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Obx(() {
                              return FormBuilderTextField(
                                name: 'password',
                                style: const TextStyle(fontSize: 14),
                                obscureText: _controller.hidePassword.value,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(
                                    errorText: 'Ingrese su contraseña',
                                  )
                                ]),
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: "Contraseña",
                                  border: const OutlineInputBorder(),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 7,
                                    horizontal: 12,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _controller.hidePassword.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    onPressed: () {
                                      _controller.hidePassword.value =
                                          !_controller.hidePassword.value;
                                    },
                                  ),
                                ),
                              );
                            }),
                            const SizedBox(height: 18),
                            Obx(() {
                              return FormBuilderTextField(
                                name: 'password2',
                                style: const TextStyle(fontSize: 14),
                                obscureText: _controller.hidePassword2.value,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(
                                    errorText: 'Repita su contraseña',
                                  )
                                ]),
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: "Repita contraseña",
                                  border: const OutlineInputBorder(),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 7,
                                    horizontal: 12,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _controller.hidePassword2.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    onPressed: () {
                                      _controller.hidePassword2.value =
                                          !_controller.hidePassword2.value;
                                    },
                                  ),
                                ),
                              );
                            }),
                            const SizedBox(height: 18),
                            SizedBox(
                              width: double.infinity,
                              child: FilledButton(
                                child: const Text(
                                  'Cambiar contraseña',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                onPressed: () async {
                                  // if (_controller.userFormKey.currentState
                                  //         ?.saveAndValidate() ??
                                  //     false) {
                                  //   final values = _controller
                                  //       .userFormKey.currentState!.value;
                                  //   printInfo(info: '$values');
                                  // }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
