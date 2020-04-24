import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
      child: Icon(icon, size: size, color: Colors.white),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          child: Container(
            alignment: Alignment(0.0, -0.9),
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color.fromRGBO(3, 54, 255, 1.0),
              ),
              child:
                  Icon(Icons.brightness_medium, color: Colors.white, size: 32)),
        ),
        Positioned(
            right: 10,
            top: 20,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 20)),
        Positioned(
            right: 30,
            top: 30,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 20)),
        Positioned(
            right: 10,
            top: 40,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 20)),
        Positioned(
            right: 30,
            top: 50,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 20)),
        Positioned(
            right: 10,
            top: 90,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 20)),
        Positioned(
            right: 30,
            top: 100,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
      ],
    );
  }
}
