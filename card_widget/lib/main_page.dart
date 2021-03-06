import 'package:flutter/material.dart';

//Custom Card Widget 
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Card Widget',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF8C062F)),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFFE5788), Color(0xFFF56D5D)])),
          ),
          Center(
              child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Card(
              elevation: 5,
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.mos.cms.futurecdn.net/c3EevbML8pgmkby5ueGgJi.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        20,
                        50 + (MediaQuery.of(context).size.height) * 0.35,
                        20,
                        20),
                    child: Column(
                      children: [
                        Center(
                          child: Text('Macbook Pro with M1 Processor',
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Posted on ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Text(
                                'June 2, 2019',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Spacer(
                              flex: 10,
                            ),
                            Icon(
                              Icons.thumb_up,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text('400', style: TextStyle(color:Colors.grey),),
                            Spacer(
                              flex: 5,
                            ),
                            Icon(
                              Icons.comment,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Spacer(flex: 1),
                            Text('200', style: TextStyle(color:Colors.grey),),
                            Spacer(flex: 10),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
