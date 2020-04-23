import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Container(
          child: Icon(Icons.pool, size: 32, color: Colors.white),
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.all(8.0),
          width: 90,
          height: 90,
          decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                  color: Colors.indigoAccent,
                  width: 3,
                  style: BorderStyle.solid)),
        )
      ]),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'dongliang',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 34,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(fontSize: 17, color: Colors.grey))
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '李白';

  @override
  Widget build(BuildContext context) {
    return Text(
      "$_author顺丰科技阿克苏对方就卡死积分卡时间段发卡数据库房间爱快递费杰卡斯房间卡书法家卡时间段发卡世纪东方卡时间段法卡萨就撒大富科技奥斯卡的房间爱看是否就卡死的积分卡加速度快放假",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
