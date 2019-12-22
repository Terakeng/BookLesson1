import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    //Scaffoldはビジュアルレイアウトを表示する
    return Scaffold(
        appBar: new AppBar(title: new Text('Profile')),
        //ボディ部分が表示内容
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "寺岡健史",
                      style: TextStyle(
                          fontSize: 32.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                    Text(
                      " -Kenji Teraoka",
                      style: TextStyle(
                          fontSize: 26.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ]),
              Text(
                "Birthday:1992/7/31",
                style: TextStyle(
                    fontSize: 22.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),
              Text(
                "Mail : tomoken453@gmail.com",
                style: TextStyle(
                    fontSize: 22.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),
              Card(
                margin: EdgeInsets.all(30.0),
                child: Text(
                  '''本業はサラリーマン、副業でプログラミングをしております。
　言語はFlutter　活動してからの日は浅いためまだまだ未熟ですが、宜しくお願いします。''',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
              )
            ],
          ),
        ));
  }}