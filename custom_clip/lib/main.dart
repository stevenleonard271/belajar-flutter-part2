import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Custom Clip'),
        ),
        body: Center(
          child: ClipPath(
            clipper: MyClipper(),
            child: Image(
              width: 300,
              image: NetworkImage(
                  'https://awsimages.detik.net.id/visual/2021/07/27/infografis-bali-masuk-deretan-destinasi-wisata-sunset-terindah-di-bumi-1.jpeg?w=650'),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/2, size.height*0.75,size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();



    return path;
    }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper)=> false;
  
}