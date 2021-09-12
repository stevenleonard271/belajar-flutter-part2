import 'package:flutter/material.dart';
import 'user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "no data";
  User users;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Tidak ada Data'),
              RaisedButton(
                onPressed: () {
                  User.getUsers("3").then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++) {
                      output = output + " [ " + users[i].name + " ] ";
                      setState(() {
                        
                      });
                    }
                  });
                },
                child: Text('POST'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
