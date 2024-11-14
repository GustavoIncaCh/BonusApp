import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'package:bonus_app/presentation/notifications/notifications_controller.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({super.key});

  final _controller = Get.put(NotificationsController());

  @override
  Widget build(BuildContext context) {
    _controller.firstAnimationController.forward(from: 0.00);
    _controller.secondAnimationController.forward(from: 0.00);

    return Scaffold(
      appBar: AppBar(title: const Text('Notificaciones')),
      body: ListView.builder(
        itemCount: _controller.notifications.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _controller.notifications[index];
          return SlideTransition(
            position: index.isEven
                ? _controller.firstanimation
                : _controller.secondanimation,
            child: Card(
              elevation: 0,
              margin: const EdgeInsets.only(right: 10, top: 12, left: 10),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: item.type == 1 ? Colors.blue : Colors.red,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            DateFormat('dd/MM/yyyy - HH:mm').format(item.date),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
