import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  String id, name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'].toString(),
        name: object['first_name'] + " " + object['last_name']);
  }

  static Future <List<User>> getUsers(String page) async {
    String apiURL = "https://reqres.in/api/users?page=" + page;
    Uri url = Uri.parse(apiURL);
    var apiResult = await http.get(url);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<User> users = [];
    for (int i = 0; i < listUser.length; i++) {
      users.add(User.createUser(listUser[i]));
      return users;
    }
  }
}
