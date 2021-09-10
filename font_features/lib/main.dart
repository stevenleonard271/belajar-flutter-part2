import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

// Font Feature could be found in www.docs/microsoft.com
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Typography with Font Features '),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Contoh 1',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Contoh 2 with Small Caps',
              style: TextStyle(
                  fontSize: 20, fontFeatures: [FontFeature.enable('scmp')]),
            ),
            Text(
              'Contoh 1/2 (Small Caps and Frac)',
              style: TextStyle(fontSize: 20, fontFeatures: [
                FontFeature.enable('smcp'),
                FontFeature.enable('frac'),
              ]),
            ),
            Text(
              'Milonga 31/2 (Small Caps and Frac)',
              style: TextStyle(fontSize: 20,
              fontFamily: "Milonga",
               fontFeatures: [
                FontFeature.enable('smcp'),
                FontFeature.enable('frac'),
              ]),
            ),
            Text(
              'Contoh Cardo (Tanpa Apapun)',
              style: TextStyle(fontSize: 20, fontFamily: "Cardo"),
            ),
            Text(
              'Contoh Cardo 19 (Old Style)',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cardo",
                  fontFeatures: [FontFeature.oldstyleFigures()]),
            ),
            Text(
              'Contoh Gabriola (Tanpa Apapun)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Gabriola",
              ),
            ),
            Text(
              'Contoh Gabriola (Style no 5)',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Gabriola",
                  fontFeatures: [FontFeature.stylisticSet(5)]),
            ),
          ],
        )),
      ),
    );
  }
}
