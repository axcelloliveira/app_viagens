import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'dart:developer' as developer;
import '../../data/repository/login_repository.dart';

class LoginController extends GetxController {
  String username = '';
  String password = '';
  String loginState = '';
  TextEditingController tUsername = TextEditingController();
  TextEditingController tPassword = TextEditingController();

  Future login() async {
    if (username == '' || password == '') {
      loginState = 'empty';
      update();
      developer.log(loginState, name: 'ESTADO DE LOGIN');
    } else {
      loginState = 'loading';
      update();
      String result = await loginConnection(username, password);
      if (result == 'success') {
        loginState = 'success';
        update();
        developer.log(loginState, name: 'ESTADO DE LOGIN');
        //NAVEGAÇÃO PARA MENU PRINCIPAL
      } else if (result == 'error') {
        loginState = 'error';
        update();
        developer.log(loginState, name: 'ESTADO DE LOGIN');
      } else if (result == 'server_error') {
        loginState = 'server_error';
        update();
        developer.log(loginState, name: 'ESTADO DE LOGIN');
      }
    }
  }

  void setUsername(String userChanged) {
    username = userChanged;
    update();
  }

  void setPassword(String passChanged) {
    password = passChanged;
    update();
  }
}
