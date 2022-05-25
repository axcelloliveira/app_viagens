import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomBottomAppBarController extends GetxController {
  var currentIndex = 0;

  setIndex(int? value) {
    currentIndex = value!;
    update();
  }
}
