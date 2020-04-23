import 'package:flutter/material.dart';
import 'package:functionflutter/model/post.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: posts.length, itemBuilder: _listItemBuilder);
  }


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
}