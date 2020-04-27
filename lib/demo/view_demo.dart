import 'package:flutter/material.dart';
import 'package:functionflutter/model/post.dart';

class ViewDemo extends StatelessWidget {
  Widget _pageItemBuilder(context, index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(posts[index].author)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: _pageItemBuilder,
      itemCount: posts.length,
    );
  }
}




class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //禁止自动滑动  翻到哪里就是哪里（效果）
//      pageSnapping: false,
      scrollDirection: Axis.vertical,
//    reverse: true,//将视图整个倒过来
      onPageChanged: (value) => debugPrint("====>$value"),
      controller: PageController(
          initialPage: 1, keepPage: false, viewportFraction: 0.85),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "ONE",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
        Container(
          color: Colors.red[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "TWO",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
        Container(
          color: Colors.orange[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "there",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
      ],
    );
  }
}
