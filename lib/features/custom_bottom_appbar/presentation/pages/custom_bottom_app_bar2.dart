import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:get/get.dart';

import '../state_manager/custom_bottom_appbar_controller.dart';


class FloatBottomBar extends StatelessWidget {
   FloatBottomBar({Key? key}) : super(key: key);
  final CustomBottomAppBarController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return
      GetBuilder<CustomBottomAppBarController>(
          builder: (value)=> FloatingNavbar(
            onTap: (int val) {
              controller.setIndex(val);
            },
            backgroundColor: Colors.white,
            selectedItemColor: Colors.white,
            selectedBackgroundColor: Colors.brown[600],
            unselectedItemColor: Colors.black,
            currentIndex: controller.currentIndex,
            elevation: 10,

            items: [
              FloatingNavbarItem(icon: Icons.home, title: 'Home'),
              FloatingNavbarItem(icon: Icons.pie_chart_outline, title: 'Gráficos'),
              FloatingNavbarItem(icon: Icons.settings, title: 'Configurações'),
            ],
          ));
  }
}