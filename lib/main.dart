import 'package:flutter/material.dart';
import './Profile.dart';
import './Products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => new _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: new AppBar(title: new Text('ポートフォリオ')),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('寺岡健史'),
              accountEmail: new Text('tomoken453@gmail.com'),
            ),
            new ListTile(
              title: new Text('Profile'),
              onTap: (){
               Navigator.push(
                context,
                  new MaterialPageRoute(
                    builder: (BuildContext context)=>
                      new Profile(title: 'Profile')));
              },
            ),
            new ListTile(
              title: new Text('Products'),
              onTap: (){
               Navigator.push(
                context,
                  new MaterialPageRoute(
                    builder: (BuildContext context)=>
                      new Products(title: 'Products')));
            },
           ),
          ],
        ),
      ),
     
      body:
      Column(children: <Widget>[
        Text('メニューバーから一覧が表示されます。'),
         FlatButton(
            key: null,
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Profile()));
            },
            color: Colors.white,
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                ))),
          FlatButton(
            key: null,
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Products()));
            },
            color: Colors.white,
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Products",
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                ))),
        ],
    ),);
  }
}
