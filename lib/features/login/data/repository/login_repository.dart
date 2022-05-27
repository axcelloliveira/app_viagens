import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/model/user_local_data.dart';
import 'dart:developer' as developer;

Future<String> loginConnection(String user, String password) async {
  var url =
      'http://24.152.37.103:8083/eventos2/loginNuvem?Usuario=$user&Senha=$password';
  developer.log(url, name: 'URL de Login');
  http.Response resposta;
  try {
    resposta =
        await http.get(Uri.parse(url)).timeout(const Duration(seconds: 12));
    if (resposta.statusCode == 200) {
      if (resposta.body != 'erro') {
        var parsedJson = jsonDecode(resposta.body)[0];

        String id = parsedJson['CODIGO'];
        String username = parsedJson['NOME'];

        UserLocalData userLocalData = UserLocalData();

        await userLocalData.setUserData(id, username);

        return 'success';
      } else {
        return 'error';
      }
    } else {
      return 'server_error';
    }
  } catch (error) {
    developer.log(error.toString());
    return 'server_error';
  }
}
