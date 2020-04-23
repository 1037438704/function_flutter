import 'package:flutter/material.dart';

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
