import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_controller/custom_drawer_controller.dart';

class CustomDrawerHeader extends StatelessWidget {
  CustomDrawerHeader({Key? key}) : super(key: key);
  final CustomDrawerController controller = Get.put(CustomDrawerController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDrawerController>(
      init: controller,
      builder: (value) => UserAccountsDrawerHeader(
        accountEmail: Text(
          controller.username,
          style: const TextStyle(color: Colors.white70),
        ),
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.amberAccent[700],
        ),
        accountName: const Text(
          'Apollo Master',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
