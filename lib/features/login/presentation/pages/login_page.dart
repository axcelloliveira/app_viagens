import 'package:flutter/material.dart';
import '../../../../comuns/constants.dart';
import '../widgets/custom_text_field.dart';

import '../widgets/rounded_buttom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController tPassword = TextEditingController();
    TextEditingController tUser = TextEditingController();

    return Material(
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: kSize.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 2),

                  Image.asset("assets/images/logo_tsilveira.png"),

                  const SizedBox(height: 40),
                  CustomTextField(
                    obscureText: false,
                    icon: const Icon(
                      Icons.email,
                      color: kPrimaryColor,
                    ),
                    tController: tUser,
                    hintText: 'Usuário',
                    type: 'login',
                  ),
                  CustomTextField(
                    obscureText: true,
                    icon: const Icon(
                      Icons.email,
                      color: kPrimaryColor,
                    ),
                    tController: tPassword,
                    hintText: 'Senha',
                    type: 'password',
                  ),

                  const SizedBox(height: 9),
                  const RoundedButton(
                    title: 'LOGIN',
                    backGroundColor: kPrimaryColor,
                    borderColor: Colors.transparent,
                    textColor: Colors.white,
                  ),

                  const SizedBox(height: 10),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
