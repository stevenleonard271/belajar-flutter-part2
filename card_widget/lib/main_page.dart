import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Custom Card Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0XFFFE5788), Color(0xFFF56D5D)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                child: Stack(
                  children: [
                    Opacity(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                                fit: BoxFit.cover)),
                      ),
                      opacity: 0.7,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://helios-i.mashable.com/imagery/reviews/01VF7MfWsdzSTpxBsup7lCb/hero-image.fill.size_1248x702.v1623391656.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          (50 + MediaQuery.of(context).size.height * 0.35),
                          20,
                          20),
                          // color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Text(
                              'Macbook Pro With M1 Chip Processor',
                              style: TextStyle(
                                  color: Color(0xFFF56D5D), fontSize: 25),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Posted on ',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'June 19, 2021 ',
                                  style: TextStyle(
                                      color: Color(0xFFF56D5D), fontSize: 12),
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Spacer(
                                flex: 10,
                              ),
                              Icon(Icons.thumb_up,
                                  size: 18, color: Colors.grey),
                              Spacer(
                                flex: 1,
                              ),
                              Text('99', style: TextStyle(color: Colors.grey)),
                              Spacer(
                                flex: 5,
                              ),
                                Icon(Icons.comment,
                                  size: 18, color: Colors.grey),
                              Spacer(
                                flex: 1,
                              ),
                              Text('1K', style: TextStyle(color: Colors.grey)),
                              Spacer(flex: 10),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
