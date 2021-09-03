import 'package:demo_hero_clipwidget/second_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Latihan Hero Animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'PP',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Image(
                image: NetworkImage(
                    'https://scontent.fcgk29-1.fna.fbcdn.net/v/t1.6435-9/79191943_1958832604249194_6314451731618243220_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGsJMn5sUnF8SPRxCqag99O6NhfvqaphiPo2F--pqmGI6qXf0-kVZFyQC60m-B9Ze0m9zAihQN6mNCvU0xxttnu&_nc_ohc=SjyoNjSz_BcAX-yzbH_&_nc_ht=scontent.fcgk29-1.fna&oh=35065170a840e77faead1ad7053f9a3b&oe=6157B8FB'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
