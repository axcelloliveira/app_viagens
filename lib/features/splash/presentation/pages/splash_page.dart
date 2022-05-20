import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viagens_app/features/splash/presentation/state_manager/splash_controller.dart';


class SplashPage extends StatelessWidget {
   SplashPage({Key? key}) : super(key: key);

  final SplashController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (value) => Container(
          color: Colors.white,
          child: Center(child: Image.asset("assets/images/logo_tsilveira.png"))),
    );
  }

}
