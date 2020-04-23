import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:functionflutter/model/post.dart';

import 'demo/listview_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '用于添加功能收集以及使用',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "侧拉",
            onPressed: () => debugPrint("侧拉点击事件"),
          ),
          title: Text("Home", style: TextStyle(fontWeight: FontWeight.bold)),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), tooltip: "搜索")
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.red,
            //未选中的icon颜色
            labelColor: Colors.green,
            //选中icon的颜色
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.blueAccent,
            //下面label的颜色
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 180, color: Colors.black12),
            Icon(Icons.change_history, size: 180, color: Colors.black12),
            Icon(Icons.directions_bike, size: 180, color: Colors.black12),
          ],
        ),
      ),
    );
  }
}

//class Home extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return DefaultTabController(
//      length: 3,
//      child: Scaffold(
//        backgroundColor: Colors.grey[100],
//        appBar: AppBar(
//          leading: IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: '按钮菜单',
//            onPressed: () => debugPrint("Navigration button is pressed."),
//          ),
//          centerTitle: true,
//          title: Text("标题", style: TextStyle(fontWeight: FontWeight.bold)),
//          actions: <Widget>[
//            IconButton(
//              icon: Icon(Icons.search),
//              tooltip: "搜索",
//              onPressed: () => debugPrint("搜索"),
//            )
//          ],
//          elevation: 0,
//          bottom: TabBar(
//              unselectedLabelColor: Colors.black38,
//              indicatorColor: Colors.black54,
//              indicatorSize: TabBarIndicatorSize.label,
//              indicatorWeight: 2.0,
//              tabs: <Widget>[
//                Tab(icon: Icon(Icons.local_florist)),
//                Tab(icon: Icon(Icons.change_history)),
//                Tab(icon: Icon(Icons.directions_bike))
//              ]),
//        ),
//        body: TabBarView(
//          children: <Widget>[
//            Icon(
//              Icons.local_florist,
//              size: 128,
//              color: Colors.black12,
//            ),
//            Icon(
//              Icons.change_history,
//              size: 128,
//              color: Colors.black12,
//            ),
//            Icon(
//              Icons.directions_bike,
//              size: 128,
//              color: Colors.black12,
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
