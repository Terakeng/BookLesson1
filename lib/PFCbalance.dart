import 'package:flutter/material.dart';

class PFCbalance extends StatefulWidget {
  PFCbalance({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _PFCbalance createState() => _PFCbalance();
}

class _PFCbalance extends State<PFCbalance> {
  @override
    var _gridData = <Widget>[
    //container
    Container(
      color: Colors.orange,
      child: Text(
        "　　　　　PFCバランス　　　　　　　"
        "　ケトジェニックダイエットでの　　"
        "タンパク質・糖質・脂質のバランス",
        style: TextStyle(
            fontSize: 24.0, fontWeight: FontWeight.w400, fontFamily: "Roboto"),
      ),
    ),
    //column
    Column(
      //columnの配置場所（center,start,end）
        mainAxisAlignment: MainAxisAlignment.start,
        //ウィジェットのサイズ（コンテナ幅に合わせるかどうか）を設定する
        mainAxisSize: MainAxisSize.max,
        //columnに配置するウィジェットの配置場所
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '①タンパク質：多',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
            ),
          ),
           Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '・・・自己体重×２(g)を目安に摂取する。',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '②糖質：少',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '・・・20g以下を目安に摂取を控える。',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '③脂質：多',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '・・・良質な脂を摂取する。',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
            ),
          ),
        ]),
    //divider
      Divider(color: Colors.blue
),
    //clumn
   Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "※ケトジェニックダイエットは、従来の糖質をエネルギーとして"
            "活動する方法ではなく、糖質を摂取しないことでケトン体を発生させ、"
            "体内の余分な脂肪をエネルギーとして生命活動を維持する手法である。"
            "　　この時、筋肉の分解(カタボリック)を避けるため、"
            "しっかりタンパク質と脂質を摂取することが必要となる。"
            "　なお、PFCバランスは以下の通り、kcal計算出来る。",
            style: TextStyle(
                fontSize: 18.0,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          ),
        ]),
  Divider(color: Colors.blue
),
    //Expanded＆Padding
    Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
      Expanded(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 0),
          child: Text(
            'タンパク質=4kcal',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          ),
        ),
      ),
      Expanded(
        child: Container(
          color: Color.fromARGB(255, 255, 125, 0),
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Container(
              color: Color.fromARGB(255, 255, 255, 0),
              child: Text(
                '糖質=4kcal',
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 0),
          child: Text(
            '脂質=9kcal',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          ),
        ),
      ),
    ]),
  Divider(color: Colors.black
),
//container
    Container(
      color: Colors.white,
      child: Text(
        "身長170cm、体重80kg、年齢27歳の男性が減量を望む場合、理想的なPFCバランスが以下の通りである。",
        style: TextStyle(
            fontSize: 24.0, fontWeight: FontWeight.w400, fontFamily: "Roboto"),
      ),
    ),
//FractionallySizedBox
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      SizedBox(
        width: 300.0,
        height: 100.0,
        child: Container(
          color: Color. fromARGB(255, 255, 255, 0),
          child: Text(
            'タンパク質:160g'
            '/kcal:640kcal',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          ),
        ),
      ),
      FractionallySizedBox(
        widthFactor: 0.5,
        child: Container(
          color: Color.fromARGB(255, 255, 125, 0),
          child: Text(
            '糖質:20g'
            '/kcal:80kcal',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          ),
        ),
      ),
      SizedBox(
        width: 300.0,
        height: 100.0,
        child: Container(
          color: Color. fromARGB(255, 255, 255, 0),
          child: Text(
            '脂質:100g'
            '/kcal:900kcal',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          ),
        ),
      ),
      FractionallySizedBox(
        widthFactor: 0.8,
        child: Container(
          color: Color.fromARGB(255, 255, 0, 0),
          child: Text(
            'Total kcal: 1,620kcal',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          ),
        ),
      ),
    ]),
    //divider
      Divider(color: Colors.blue
    ),
 Column(children: <Widget>
     [Text("タンパク質を欠かさず摂取し、理想の体に近づけよう！",
             style: TextStyle(
                    fontSize: 20.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
     )],
  ),
    //card
    Center(
      child: Card(
        margin: EdgeInsets.all(50.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "筋肉",
                style: TextStyle(
                    fontSize: 40.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Text(
                "タンパク質" * 5,
                style: TextStyle(
                    fontSize: 10.0,
                    color: const Color(0xFF0000FF),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              )
            ]),
      ),
    ),
Column (children: <Widget>[
      Text(
        '寺岡健史',
        style: TextStyle(
            fontSize: 20.0,
            color: const Color(0xFF0000FF),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
      ),
    Stack(children: <Widget>[
      Image.network(
          'https://www.lettuceclub.net/i/R1/img/dish/1/S20101125015001A_000.png'),
      Text("鶏むね肉 100gのPFCバランス"),
    ])],)
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("PFCbalance"),
        backgroundColor: const Color(0xFF009688),
      ),
      body: GridView.count(
        //列幅
        crossAxisCount: 1,
        //各行間のスペース
        mainAxisSpacing: 10.0,
        //ウィジェット間のスペース
        crossAxisSpacing: 10.0,
        padding: const EdgeInsets.all(10.0),
        children: _gridData,
      ),
    );
  }
}
