import 'package:flutter/material.dart';
import 'package:flutter_app2/MaterialUI.dart';
import './PFCbalance.dart';
import './MaterialUI.dart';
import './WidgetAdvance.dart';

class Products extends StatefulWidget {
  Products({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _Products createState() => _Products();
}

class _Products extends State<Products> {
  @override
  Widget build(BuildContext context) {
    //Scaffoldはビジュアルレイアウトを表示する
    return Scaffold(
        appBar: new AppBar(title: new Text('Products')),
        //ボディ部分が表示内容
        body: Column(children: <Widget>[
         FlatButton(
            key: null,
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new PFCbalance()));
            },
            color: Colors.blue[100],
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "PFCbalance",
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
                          new MaterialUI()));
            },
            color: Colors.blue[100],
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "MaterialUI",
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
                          new WidgetAdvance()));
            },
            color: Colors.blue[100],
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "WidgetAdvance",
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                ))), 
        ],
        ),);}}