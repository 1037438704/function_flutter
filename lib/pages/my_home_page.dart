import 'package:flutter/material.dart';

///主页面
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("主页面"),),
      body: Center(child: Text("Home页面"),),
    );
  }

}




