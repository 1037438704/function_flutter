import 'package:flutter/material.dart';
import 'package:functionflutter/model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _listItemBuilder(context, index) {
    return Container(
      margin: EdgeInsets.all(8),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16),
          Text(posts[index].title, style: Theme.of(context).textTheme.title),
          Text(posts[index].title, style: Theme.of(context).textTheme.subhead),
          SizedBox(height: 16)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '用于添加功能收集以及使用',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            title: Text(
          "标题",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        body: ListView.builder(
            itemCount: posts.length, itemBuilder: _listItemBuilder),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.yellow, fontSize: 40)),
    );
  }
}
