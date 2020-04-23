import 'package:flutter/material.dart';

import 'demo/basic_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/listview_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '宁皓网视频学习',
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
          actions: <Widget>[IconButton(icon: Icon(Icons.search))],
          title: Text("Home"),
          bottom: TabBar(
            unselectedLabelColor: Colors.black54,
            //选中的icon颜色
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            Icon(Icons.directions_bike, color: Colors.black12, size: 128),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar:BottomNavigationBarDemo(),
      ),
    );
  }
}
