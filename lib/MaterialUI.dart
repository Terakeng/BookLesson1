import 'package:flutter/material.dart';

class MaterialUI extends StatefulWidget {
  //コンストラクタ
  //ウィジェットには識別IDとしてKeyが自動で与えられるが利用されないケースが多い
  MaterialUI({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MaterialUI createState() => new _MaterialUI();
}

class _MaterialUI extends State<MaterialUI> {
  final textFieldFixController = TextEditingController();
  final textFieldVariableController = TextEditingController();
  final String initMessage = "どうする？";
  static var coin = <String>
  ['出掛けず家でのんびりしよう！',
  '出掛けず家で勉強しよう！',
   'ジムで体を鍛えよう！',
   'カラオケでストレス発散しよう！',
   '喫茶店で本を読もう！',
   '買い物に出掛けよう！',
   '小旅行にいこう！',
   '釣りをしにいこう！',
   '今日はちょっとギャンブルでもするか・・・'];
  String buttonMessage;
  String textFieldMessage;
  String selectCheckMessage;
  String radioSelected;
  String selectRadioMessage;
  String popSelected;
  String selectPopMessage;
  String sliderMessage;
  String alertMessage;
  double sliderValue = 0.0;
  bool checked = false;
  List<Widget> items = List();

  @override
  void initState() {
    buttonMessage = initMessage;
    textFieldMessage = initMessage;
    selectCheckMessage = initMessage;
    selectRadioMessage = initMessage;
    selectPopMessage = initMessage;
    sliderMessage = initMessage;
    alertMessage = initMessage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MaterialUI"),
        ),
        body: GridView.count(
            crossAxisCount: 1,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              //buttons
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      buttonMessage,
                      style: TextStyle(
                        fontSize: 32.0,
                      ),
                    ),
                    FlatButton(
                        key: null,
                        onPressed: buttonPressed,
                        color: Colors.black12,
                        child:  Text(
                              "強めに叩く",
                              style: TextStyle(
                                  fontSize: 32.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            )),
                    RaisedButton(
                        key: null,
                        onPressed: buttonPressed,
                        color: Colors.black12,
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "弱く叩く",
                              style: TextStyle(
                                  fontSize: 32.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ))),
                    IconButton(
                      icon: const Icon(Icons.insert_emoticon),
                      iconSize:   70.0,
                      color: Colors.red,
                      onPressed: buttonPressed,
                    ),
                  ]),
              //textfield
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      textFieldMessage,
                      style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      controller: textFieldFixController,
                      style: TextStyle(
                          fontSize: 28.0,
                          color: const Color(0xFFFF0000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),
                  FlatButton(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.lightBlueAccent,
                      child: Text(
                        "上のテキストを送り込みます",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ),
                      onPressed: textFieldButtonPressed),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      onChanged: textChanged,
                      controller: textFieldVariableController,
                      style: TextStyle(
                          fontSize: 28.0,
                          color: const Color(0xFFFF0000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),
                ],
              ),
              //check
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      selectCheckMessage,
                      style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Checkbox(
                            value: checked,
                            onChanged: checkChanged,
                          ),
                          Text(
                            "？",
                            style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          )
                        ]),
                    Switch(
                      value: checked,
                      onChanged: checkChanged,
                    ),
                  ]),
              //radio
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      selectRadioMessage,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Radio<String>(
                            value: '飲みます！',
                            groupValue: radioSelected,
                            onChanged: (String value) => radioChanged(value),
                          ),
                          Text(
                            "アルコール有り",
                            style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Radio<String>(
                            value: '飲みません！',
                            groupValue: radioSelected,
                            onChanged: (String value) => radioChanged(value),
                          ),
                          Text(
                            "アルコール無し",
                            style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          )
                        ]),
                  ]),
              //pop
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    selectPopMessage,
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                  ),
                  DropdownButton<String>(
                    onChanged: (String value) => popSelect(value),
                    value: popSelected,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                    items: <DropdownMenuItem<String>>[
                      const DropdownMenuItem<String>(
                          value: 'One', child: const Text('One')),
                      const DropdownMenuItem<String>(
                          value: 'Two', child: const Text('Two')),
                      const DropdownMenuItem<String>(
                          value: 'Three', child: const Text('Three')),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: PopupMenuButton(
                      onSelected: (String value) => popSelect(value),
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        const PopupMenuItem(
                          child: const Text("One"),
                          value: "One",
                        ),
                        const PopupMenuItem(
                          child: const Text("Two"),
                          value: "Two",
                        ),
                        const PopupMenuItem(
                          child: const Text("Three"),
                          value: "Three",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //slider
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    sliderMessage,
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Slider(
                    onChanged: sliderChanged,
                    min: -100.0,
                    max: 100.0,
                    divisions: 20,
                    value: sliderValue,
                  ),
                ],
              ),
              //dialog
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      alertMessage,
                      style: TextStyle(
                          fontSize: 32.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),
                    RaisedButton(
                        onPressed: alertButtonPressed,
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "alert",
                          style: TextStyle(
                              fontSize: 28.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto"),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),
                    RaisedButton(
                        onPressed: simpleDialogButtonPressed,
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "simpledialog",
                          style: TextStyle(
                              fontSize: 28.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto"),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),
                    RaisedButton(
                        onPressed: modalButtonPressed,
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "modal",
                          style: TextStyle(
                              fontSize: 28.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto"),
                        ))
                  ]),
            ]));
  }

  void buttonPressed() {
    setState(() {
      buttonMessage = (coin..shuffle()).first;
    });
  }

  void textFieldButtonPressed() {
    setState(() {
      textFieldMessage = textFieldFixController.text;
    });
  }

  void textChanged(String val) {
    setState(() {
      textFieldMessage = val;
    });
  }

  void checkChanged(bool value) {
    setState(() {
      checked = value;
      selectCheckMessage = value ? '友達と' : '一人';
    });
  }

  void radioChanged(String value) {
    setState(() {
      radioSelected = value;
      selectRadioMessage = 'アルコールは・・・$radioSelected';
    });
  }

  void popSelect(String value) {
    setState(() {
      popSelected = value;
      selectPopMessage = 'select: $popSelected';
    });
  }

  void sliderChanged(double value) {
    setState(() {
      sliderValue = value.floorToDouble();
      sliderMessage = 'set value: $sliderValue';
    });
  }

  void alertButtonPressed() {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text("Hello!"),
        content: const Text("This is sample."),
        actions: <Widget>[
          FlatButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop<String>(context, 'Cancel')),
          FlatButton(
              child: const Text('OK'),
              onPressed: () => Navigator.pop<String>(context, 'OK'))
        ],
      ),
    ).then<void>((value) => resultAlert(value));
  }

  void simpleDialogButtonPressed() {
    showDialog(
      context: context,
      builder: (BuildContext context) => SimpleDialog(
        title: const Text('Select assignment'),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () => Navigator.pop<String>(context, 'One'),
            child: const Text('One'),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop<String>(context, 'Two'),
            child: const Text('Two'),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop<String>(context, 'Three'),
            child: const Text('Three'),
          ),
        ],
      ),
    ).then<void>((value) => resultAlert(value));
  }
  
void modalButtonPressed(){
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) => Column(
      children: <Widget>[
        Text(
          'This is Modal Bottom Sheet!',
          style:TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w300,
            color:Colors.black,
          )
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        FlatButton(
          onPressed: () => Navigator.pop<String>(context, 'Close'),
          child: Text('Close',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w400,
              color: Colors.cyan,
            ),
          ),
        )
      ],
    ),
  ).then<void>((value) => resultAlert(value));
} 

  void resultAlert(String value) {
    setState(() {
      alertMessage = 'selected: $value';
    });
  }
}
