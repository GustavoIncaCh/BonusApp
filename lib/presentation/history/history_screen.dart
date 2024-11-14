import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'package:bonus_app/presentation/history/history_controller.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

  final _controller = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    _controller.firstAnimationController.forward(from: 0.00);
    _controller.secondAnimationController.forward(from: 0.00);

    return Scaffold(
      appBar: AppBar(title: const Text('Historial')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 8),
              child: Text(
                'Hoy - ${DateFormat('d MMMM', 'es').format(DateTime.now())}',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Column(
              children: _controller.historicNow.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;

                return SlideTransition(
                  position: index.isEven
                      ? _controller.firstanimation
                      : _controller.secondanimation,
                  child: Container(
                    width: double.maxFinite,
                    margin:
                        const EdgeInsets.only(right: 10, left: 10, bottom: 5),
                    child: Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: item.add ? Colors.green : Colors.red,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                item.add
                                    ? Icons.add_circle_outline
                                    : Icons.remove_circle_outline,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                                height: 50, child: VerticalDivider()),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Factura: ${item.invoice}',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    item.reason,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Fecha: ${DateFormat('dd/MM/yyyy - HH:mm').format(item.date)}',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                                height: 50, child: VerticalDivider()),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                item.add
                                    ? Text(
                                        '+ ${item.point}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    : Text(
                                        '- ${item.point}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                Text(
                                  '   Puntos',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: item.add ? Colors.green : Colors.red,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child: Divider(),
            ),
            const SizedBox(height: 5),
            Column(
              children: _controller.historic.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;

                return SlideTransition(
                  position: index.isEven
                      ? _controller.firstanimation
                      : _controller.secondanimation,
                  child: Container(
                    width: double.maxFinite,
                    margin:
                        const EdgeInsets.only(right: 10, left: 10, bottom: 5),
                    child: Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: item.add ? Colors.green : Colors.red,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                item.add
                                    ? Icons.add_circle_outline
                                    : Icons.remove_circle_outline,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                                height: 50, child: VerticalDivider()),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Factura: ${item.invoice}',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    item.reason,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Fecha: ${DateFormat('dd/MM/yyyy - HH:mm').format(item.date)}',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                                height: 50, child: VerticalDivider()),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                item.add
                                    ? Text(
                                        '+ ${item.point}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    : Text(
                                        '- ${item.point}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                Text(
                                  '   Puntos',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: item.add ? Colors.green : Colors.red,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
