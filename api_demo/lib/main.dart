import 'package:flutter/material.dart';

import 'post_result+model.dart';
import 'user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((user != null)
                  ? user.id + " | " + user.name
                  : "Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  //Method POST
                  // PostResult.connectToAPI("Steven", "Programmer").then((value) {
                  //   postResult = value;
                  //   setState(() {});
                  // });

                  //Method GET
                  User.connectToAPI("6").then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text('GET'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
