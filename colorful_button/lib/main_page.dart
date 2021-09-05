import 'package:colorful_button/colorful_button.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Latihan Colorful Button'),
        ),
        body: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ColorfulButton(
                  Colors.pink,
                  Colors.blue,
                  Icons.adb,
                ),
                 ColorfulButton(
                  Colors.amber,
                  Colors.red,
                  Icons.comment,
                ),
                 ColorfulButton(
                  Colors.green,
                  Colors.purple,
                  Icons.computer,
                ),
                 ColorfulButton(
                  Colors.green,
                  Colors.brown,
                  Icons.contact_phone,
                ),
              ]),
        ));
  }
}
