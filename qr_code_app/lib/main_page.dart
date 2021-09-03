import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code App'),
      ),
      body: Center(
          child: QrImage(
        version: 6,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        errorCorrectionLevel: QrErrorCorrectLevel.M,
        padding: EdgeInsets.all(0),
        size: 300,
        data: 'www.instagram.com/stevenleonard271',
      )),
    );
  }
}
