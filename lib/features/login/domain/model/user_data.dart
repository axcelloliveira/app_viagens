import 'dart:convert';

class UserData {
  String? id;
  String? username;

  UserData({this.username, this.id});

  Map<String, dynamic> toMap() {
    return {
      'CODIGO': id,
      'NOME': username,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      id: map['CODIGO'] ?? '',
      username: map['NOME'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) =>
      UserData.fromMap(json.decode(source));
}
