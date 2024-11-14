import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:bonus_app/presentation/point_card/point_card_controller.dart';

class PointCardScreen extends StatelessWidget {
  PointCardScreen({super.key});

  final _controller = Get.put(PointCardController());

  @override
  Widget build(BuildContext context) {
    _controller.firstAnimationController.forward(from: 0.00);
    _controller.secondAnimationController.forward(from: 0.00);
    _controller.thirdsecondAnimationController.forward(from: 0.00);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjeta de puntos'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.all(10),
              child: Card(
                elevation: 0,
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                        ),
                      ),
                      child: SlideTransition(
                        position: _controller.thirdAnimation,
                        child: Image.asset('assets/images/logo.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          SlideTransition(
                            position: _controller.firstAnimation,
                            child: Text(
                              'Disponible:',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          SlideTransition(
                            position: _controller.secondAnimation,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.confirmation_number,
                                  color: Colors.blue,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '315 Puntos',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SlideTransition(
                            position: _controller.thirdAnimation,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.monetization_on,
                                  color: Colors.green,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '150.00 Lempiras',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Divider(),
                          Container(
                            width: double.maxFinite,
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Vencen el 31/12/2023',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            alignment: Alignment.bottomRight,
                            child: Text(
                              '115 Puntos',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                          const Divider(),
                          Container(
                            width: double.maxFinite,
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Vencen el 31/12/2024',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            alignment: Alignment.bottomRight,
                            child: Text(
                              '200 Puntos',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                          const Divider(),
                          const SizedBox(height: 5),
                          SlideTransition(
                            position: _controller.thirdAnimation,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 5),
                                  Image.asset('assets/images/barras.png'),
                                  const Text(
                                    'Escanea el código',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  const Text(
                                    '107878710110001',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
