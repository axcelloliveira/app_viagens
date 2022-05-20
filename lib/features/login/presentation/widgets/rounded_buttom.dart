import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viagens_app/comuns/constants.dart';
import 'package:viagens_app/features/login/presentation/state_manager/login_controller.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.title,
    required this.backGroundColor,
    required this.borderColor,
    required this.textColor,
  }) : super(key: key);
  final String title;
  final Color backGroundColor;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.find();
    return GetBuilder<LoginController>(
        builder: (value) => ElevatedButton(
              onPressed: () =>  controller.login(),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(color: Colors.white),
                )),
              ),
              child: Container(
                width: kSize.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amberAccent[400],
                    border: Border.all(color: Colors.white)),
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                child: controller.loginState != 'loading'
                    ? Text(
                        title,
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      )
                    : const CircularProgressIndicator(
                        color: Colors.white,
                      ),
              ),
            ));
  }
}
