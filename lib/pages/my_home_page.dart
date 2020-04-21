import 'package:flutter/material.dart';

///主页面
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("视频播放"),),
      body: Center(child: Text("播放"),),
    );
  }
}
