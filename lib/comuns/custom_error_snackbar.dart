import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showErrorSnackBar({
  required String message,
}) {
  Get.snackbar('Ocorreu um erro', message,
      colorText: Colors.white,
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM);
}
