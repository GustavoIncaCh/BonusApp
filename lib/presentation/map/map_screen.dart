import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:bonus_app/presentation/map/map_controller.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});

  final _controller = Get.put(MapController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Puntos de canje')),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/map.png',
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          const Center(
            child: Text(
              'Pantalla de ejemplo',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
