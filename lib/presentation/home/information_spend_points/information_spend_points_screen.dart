import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:bonus_app/presentation/home/information_spend_points/information_spend_points_controller.dart';

class InformationSpendPointsScreen extends StatelessWidget {
  InformationSpendPointsScreen({super.key});

  final _controller = Get.put(InformationSpendPointsController());

  @override
  Widget build(BuildContext context) {
    _controller.firstAnimationController.forward(from: 0.00);
    _controller.secondAnimationController.forward(from: 0.00);

    return Scaffold(
      // appBar: AppBar(title: const Text('')),
      appBar: AppBar(title: const Text('¿Dónde gastar puntos?')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                ),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                children: [
                  SlideTransition(
                    position: _controller.firstAnimation,
                    child: Padding(
                      // padding: const EdgeInsets.only(top: 2, bottom: 10),
                      padding: const EdgeInsets.only(top: 2, bottom: 20),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.purpleAccent,
                                Colors.deepPurple,
                              ],
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.shopping_bag,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const Align(
                  //   alignment: Alignment.topCenter,
                  //   child: Text(
                  //     '¿Dónde gastar puntos?',
                  //     style: TextStyle(
                  //       fontSize: 17,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.white,
                  //     ),
                  //     textAlign: TextAlign.center,
                  //   ),
                  // ),
                  // const SizedBox(height: 15),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Card(
              elevation: 0,
              margin: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SlideTransition(
                  position: _controller.secondAnimation,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hola, nos complace informarte sobre las emocionantes opciones que tienes para disfrutar al máximo tus puntos ganados. En este programa de recompensas, tus puntos no solo representan un logro personal, sino también la llave para acceder a increíbles beneficios.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Compras en Establecimientos Seleccionados',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Ahora puedes utilizar tus puntos para realizar compras en una variedad de establecimientos seleccionados. Solo presenta tu tarjeta virtual al pagar y disfruta de tus compras sin tener que gastar dinero.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Conversión de Puntos a Dinero',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '¡La flexibilidad es clave! Si prefieres tener dinero en efectivo, ahora puedes convertir tus puntos en efectivo y recibir el monto correspondiente. Simplemente sigue los sencillos pasos en nuestro portal en línea y elige la opción que mejor se adapte a tus necesidades.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'No dudes en explorar todas estas emocionantes opciones a través de tu aplicación movil',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Agradecemos tu continua confianza y esperamos que disfrutes al máximo de tus recompensas.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '¡Gracias por ser parte de nuestra familia!',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
