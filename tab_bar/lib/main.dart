import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      // indicatorColor: Colors.red,
      indicator: BoxDecoration(
        color: Colors.red,
        border: Border(
            // top: BorderSide(color: Colors.purple, width: 5)
            ),
      ),
      tabs: <Widget>[
        Tab(icon: Icon(Icons.home), text: 'Home'),
        Tab(icon: Icon(Icons.publish), text: 'Upload'),
        Tab(icon: Icon(Icons.notifications), text: 'Notifications'),
        Tab(icon: Icon(Icons.account_box), text: 'Account'),
      ],
    );
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar'),
            centerTitle: true,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(color: Colors.amber, child: myTabBar)),
          ),
          body: TabBarView(children: <Widget>[
            Center(
                child: Text('Home',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Center(
                child: Text('Upload',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Center(
              child: Text('Notifications',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Center(
                child: Text('Account',
                    style: TextStyle(fontWeight: FontWeight.bold)))
          ]),
        ),
      ),
    );
  }
}
