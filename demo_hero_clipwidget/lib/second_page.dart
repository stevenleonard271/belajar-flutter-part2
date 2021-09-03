import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Latihan Hero Animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: 'PP',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 200,
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
