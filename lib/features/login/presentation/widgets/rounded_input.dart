import 'package:flutter/material.dart';

import '../../../../comuns/constants.dart';
import '../../../login/presentation/widgets/input_container.dart';

class RoundedInput extends StatelessWidget {
  const RoundedInput(
      {Key? key,
      required this.size,
      required this.hint,
      required this.obscure,
      required this.icon,
      })
      : super(key: key);

  final Size? size;
  final String? hint;
  final bool obscure;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      cursorColor: kPrimaryColor,
      obscureText: obscure,
      decoration: InputDecoration(
        icon: icon,
        iconColor: Colors.black,
        hintText: hint,
        border: InputBorder.none,
      ),
    ));
  }
}
