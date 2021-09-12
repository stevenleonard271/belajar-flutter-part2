import 'dart:convert';

import 'package:http/http.dart' as http;

//model of database

class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult({
    this.id = "none",
    this.name = "none",
    this.job = "none",
    this.created = "none",
  });

  // make an object from PostResult based on JSON

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        created: object['createdAt']);
  }

  //call API

  static Future<PostResult> connectToAPI(String name, String job) async {
    String apiURL = 'https://reqres.in/api/users';
    Uri api = Uri.parse(apiURL);
    var apiResult = await http.post(api, body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);
    return PostResult.createPostResult(jsonObject);
  }
}
