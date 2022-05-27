import 'package:get/get.dart';

class StatusController extends GetxController {
  var userStatus = '';

  getUserStatus() {}

  setUserStatus()async {
    if (userStatus == '') {
      userStatus = 'ONLINE';
      update();
      await Future.delayed(const Duration(seconds: 1));

    } else if (userStatus == 'ONLINE') {
      userStatus = 'OFFLINE';
      update();
      await Future.delayed(const Duration(seconds: 1));

    } else if (userStatus == 'OFFLINE') {
      userStatus = 'ONLINE';
      update();
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}
