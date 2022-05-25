import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSuccessSnackBar({
  required String message,
}) {
  Get.snackbar('Sucesso', message,
      colorText: Colors.white,
      backgroundColor: Colors.green,
      snackPosition: SnackPosition.TOP);
}
