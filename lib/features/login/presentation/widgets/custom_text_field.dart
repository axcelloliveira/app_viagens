import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../comuns/constants.dart';
import '../state_manager/login_controller.dart';
import 'input_container.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController tController;
  final bool obscureText;
  final String hintText;
  final Icon icon;
  final String type;

  CustomTextField(
      {Key? key,
      required this.icon,
      required this.tController,
      required this.hintText,
      required this.obscureText,
      required this.type})
      : super(key: key);
  final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return InputContainer(
      child: GetBuilder<LoginController>(
        builder: (value) => TextField(
          cursorColor: Colors.black,
          onChanged: (value) {
            if (type == 'login') {
              controller.setUsername(value);
            } else {
              controller.setPassword(value);
            }
          },
          obscureText: obscureText,
          controller: obscureText == false
              ? controller.tUsername
              : controller.tPassword,
          decoration: InputDecoration(
            icon: icon,
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
