import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  //コンストラクタ
  //ウィジェットには識別IDとしてKeyが自動で与えられるが利用されないケースが多い
  TodoList({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _TodoList createState() => new _TodoList();
}

class _TodoList extends State<TodoList>
    with SingleTickerProviderStateMixin {
  var items = ['Android', 'Heart'];
  final List<Tab> tabs = <Tab>[
    Tab(text: 'リスト１'),
    Tab(text: 'リスト２'),
    Tab(text: 'リスト３'),
  ];
  String navigationMessage;
  int navigationIndex = 0;
  List _items = <Widget>[];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    navigationMessage = items[navigationIndex];
    for (var i = 0; i < 10; i++) {
      var item = Container(
        color: i.isOdd ? Colors.blue : Colors.green,
        height: 100.0,
        child: Center(
          child: Text(
            'Level: $i',
            style: const TextStyle(fontSize: 32.0),
          ),
        ),
      );
      _items.add(item);
    }
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //silver bar だけ表示させたい場合はappBarをまるごと削除する
      appBar: new AppBar(
        title: new Text(widget.title),
        backgroundColor: const Color(0xFF009688),
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((Tab tab) {
          //return createTab(tab);
          return CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                  pinned: true,
                  expandedHeight: 200.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(tab.text + navigationMessage),
                    background: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.network(
                          'https://scontent.fkix2-1.fna.fbcdn.net/v/t1.0-9/17021350_112701272589499_1655035468614132985_n.jpg?_nc_cat=109&_nc_oc=AQkIyYg78JW_mSuNgWJoKl4j6ld16YktaGvSmk4Sd_SZ2cpazg75mHc7Qp2Rpi9kTHQ&_nc_ht=scontent.fkix2-1.fna&oh=dc84be046085273a2f5a9831d0848081&oe=5DAB72D1',
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.android),
                      tooltip: 'icon button',
                      onPressed: () {
                        print('pressed.');
                      },
                    ),
                  ]),
              SliverList(
                delegate: SliverChildListDelegate(_items),
              ),
            ],
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('リスト'),
            icon: Icon(Icons.android),
          ),
          BottomNavigationBarItem(
            title: Text('いいね'),
            icon: Icon(Icons.favorite),
          ),
           BottomNavigationBarItem(
            title: Text('いいね'),
            icon: Icon(Icons.favorite),
          ),
        ],
        onTap: tapBottomIcon,
      ),
    );
  }

  Widget createTab(Tab tab) {
    return Center(
        child: Text(
      'This is "' + tab.text + '" Tab.',
      style: const TextStyle(
        fontSize: 32.0,
        color: Colors.blue,
      ),
    ));
  }

  void tapBottomIcon(int navigationIndex) {
    setState(() {
      navigationMessage = items[navigationIndex];
    });
  }
}
