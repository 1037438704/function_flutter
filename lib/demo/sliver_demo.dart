import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "dongliang.Flutter".toUpperCase(),
                style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w400),
              ),
              background: Image.network(
                "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1587627965&di=5d47f9e9627d0ebfb63f8c91cb73ff22&src=http://01.minipic.eastday.com/20170511/20170511132714_a97930c96c5a47884752b81f8a5da89f_6.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return Padding(
        padding: EdgeInsets.only(bottom: 32),
        child: Material(
            borderRadius: BorderRadius.circular(12),
            elevation: 14,
            shadowColor: Colors.grey.withOpacity(0.5),
            child: Stack(children: <Widget>[
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child:
                      Image.network(posts[index].imageUrl, fit: BoxFit.cover)),
              Positioned(
                  top: 32,
                  left: 32,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(posts[index].title,
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        Text(posts[index].title,
                            style: TextStyle(fontSize: 13, color: Colors.white))
                      ]))
            ])),
      );
    }, childCount: posts.length));
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1),
      delegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.fill,
          ),
        );
      }, childCount: posts.length),
    );
  }
}
