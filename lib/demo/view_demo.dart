import 'package:flutter/material.dart';
import 'package:functionflutter/model/post.dart';

class ViewDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridViewExtentDemo();
  }
}




class GridViewExtentDemo extends StatelessWidget{
  List<Widget> _buildTitles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          "Item$index",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
//      scrollDirection: Axis.horizontal,
      children: _buildTitles(100),
    );
  }
}







class GridViewCountDemo extends StatelessWidget{
  List<Widget> _buildTitles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          "Item$index",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.horizontal,
      children: _buildTitles(100),
    );
  }
}

class PageViewDemoBuilder extends StatelessWidget {
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
