import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:viagens_app/comuns/custom_error_snackbar.dart';
import '../../../../comuns/custom_success_snackbar.dart';
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
      showErrorSnackBar(message: 'Insira seu usuário e senha.');
    } else {
      loginState = 'loading';
      update();
      String result = await loginConnection(username, password);
      if (result == 'success') {
        loginState = 'success';
        update();
        Get.offAndToNamed('/MenuPage');
        showSuccessSnackBar(message: 'Validação feita com sucesso!');
      } else if (result == 'error') {
        loginState = 'error';
        update();
        showErrorSnackBar(message: 'Login incorreto!');
      } else if (result == 'server_error') {
        loginState = 'server_error';
        update();
        showErrorSnackBar(
            message:
                'Falha de comunicação com o servidor. Verifique sua conexão com a internet e tente novamente.');
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
