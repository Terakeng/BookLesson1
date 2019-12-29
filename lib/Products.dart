import 'package:flutter/material.dart';
import 'package:flutter_app2/TodaySchedule.dart';
import 'package:flutter_app2/TodoList.dart';
import './PFCbalance.dart';
import './TodaySchedule.dart';
import './TodoList.dart';

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
                          new TodaySchedule()));
            },
            color: Colors.blue[100],
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "TodaySchedule",
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
                          new TodoList()));
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