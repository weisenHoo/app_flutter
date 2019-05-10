import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //设置主轴对齐
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            // color: Color.fromRGBO(3, 54, 255, 0.8),
            padding: EdgeInsets.only(
                left: 16.0, right: 16.0, top: 16.0, bottom: 16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            //设置盒子上的一些装饰
            decoration: BoxDecoration(
              // 注意：不能同时在Container里添加color属性
              color: Color.fromRGBO(3, 54, 255, 0.8),
              // border: Border(
              //   top: BorderSide(color: Colors.indigoAccent[100], width: 3.0, style: BorderStyle.solid),
              // ),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'weisen',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 24.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(text: 'stu'),
          TextSpan(
            text: '.cn',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17.0,
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《 $_author 》 - $_title 。后盾人 人人做后盾！后盾人 人人做后盾！后盾人 人人做后盾！后盾人 人人做后盾！后盾人 人人做后盾！后盾人 人人做后盾！后盾人 人人做后盾！后盾人 人人做后盾！',
      textAlign: TextAlign.right,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
