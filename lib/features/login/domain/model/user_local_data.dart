import 'package:shared_preferences/shared_preferences.dart';

class UserLocalData {
  late SharedPreferences prefs;
  late SharedPreferences username;

  setUserData(String pId, String pUser) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString('id', pId);
    await prefs.setString('username', pUser);
  }
}
