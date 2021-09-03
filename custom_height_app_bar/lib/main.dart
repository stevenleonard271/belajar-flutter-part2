import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(200),
            child: AppBar(
              backgroundColor: Colors.amber,
              flexibleSpace: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        'AppBar with Custom Height',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
