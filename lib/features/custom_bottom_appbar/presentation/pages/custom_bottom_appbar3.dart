import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viagens_app/features/custom_bottom_appbar/presentation/state_manager/custom_bottom_appbar_controller.dart';

class CustomBottomAppBar3 extends StatelessWidget {
  CustomBottomAppBar3({Key? key}) : super(key: key);
  final CustomBottomAppBarController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomBottomAppBarController>(
      builder: (value) => BottomNavigationBar(
        currentIndex: controller.currentIndex,
        elevation: 0,
        onTap: (value) {
          controller.setIndex(value);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp), label: '')
        ],
      ),
    );
  }
}
