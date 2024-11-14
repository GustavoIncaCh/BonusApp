import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:bonus_app/presentation/home/information_earn_points/information_earn_points_controller.dart';

class InformationEarnPointsScreen extends StatelessWidget {
  InformationEarnPointsScreen({super.key});

  final _controller = Get.put(InformationEarnPointsController());

  @override
  Widget build(BuildContext context) {
    _controller.firstAnimationController.forward(from: 0.00);
    _controller.secondAnimationController.forward(from: 0.00);

    return Scaffold(
      // appBar: AppBar(title: const Text('')),
      appBar: AppBar(title: const Text('¿Cómo ganar puntos?')),
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
                                Colors.yellow,
                                Colors.orange,
                              ],
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.emoji_events,
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
                  //     '¿Cómo ganar puntos?',
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
                        'Hola, estamos emocionados de presentarte una emocionante oportunidad para ganar puntos mientras brindas tus servicios a otras personas. Creemos en recompensar tu arduo trabajo y dedicación, y hemos creado un sistema que te permite acumular puntos.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '¿Cómo Funciona?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Es simple. Cada vez que completes un trabajo para otro miembro de nuestra comunidad, ganarás puntos que se sumarán a tu cuenta.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Seguimiento de Tus Puntos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Mantente al tanto de tus puntos acumulados a través de tu aplicación movil. Verás cómo cada trabajo contribuye a tu saldo total de puntos. Además, recibirás notificaciones regulares para saber cuando vencerán tus puntos.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Gracias por ser parte de esta emocionante iniciativa. Estamos ansiosos por ver cómo tu arduo trabajo se traduce en recompensas significativas para ti.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '¡A trabajar y ganar juntos!',
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
