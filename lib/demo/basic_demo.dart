import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1587645314100&di=a02b8eb63e9825d7a0a8bbb69a059bd8&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20200309%2F3407b08c9ea249f9ba68fa82a3fd68f7.jpeg'),
        alignment: Alignment.topCenter,
//            repeat: ImageRepeat.repeatY
        fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5),BlendMode.hardLight )
          )),
//      color: Colors.grey[100],
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
                  style: BorderStyle.solid),
//              borderRadius: BorderRadius.circular(16),
              shape: BoxShape.circle,
//              gradient: RadialGradient(colors: [
//                Color.fromRGBO(7, 102, 255, 1.0),
//                Color.fromRGBO(3, 28, 128, 1.0),
//              ]),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1.0),
                Color.fromRGBO(3, 28, 128, 1.0),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              boxShadow: [
                BoxShadow(
                    //控制阴影的便宜量       x轴，y轴
                    offset: Offset(5.0, 7.0),
                    //控制阴影的颜色
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 10,
                    spreadRadius: -9),
              ]),
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
