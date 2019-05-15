import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.grey[100],
      // 背景图像
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://resources.ninghao.org/images/say-hello-to-barry.jpg'), // 本地图像 AssetImage(assetName)
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeat, // 重铺
          fit: BoxFit.cover, //填充
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight,
          ), //滤镜
        ),
      ),
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
              left: 16.0,
              right: 16.0,
              top: 16.0,
              bottom: 16.0,
            ),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            //设置盒子上的一些装饰
            decoration: BoxDecoration(
              // 注意：不能同时在 Container 里添加 color 属性
              color: Color.fromRGBO(3, 54, 255, 0.8),
              // border: Border(
              //   top: BorderSide(color: Colors.indigoAccent[100], width: 3.0, style: BorderStyle.solid),
              // ),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // 注：如果有边框 border 必须4条边都设置，否则设置 borderRadius 图标会消失
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(64.0),
              // ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                ),
              ],
              // 注：使用改变盒子形状的方法，不能使用圆角 borderRadius
              shape: BoxShape.circle,
              // 镜像渐变效果
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 120, 255, 1.0),
              //     Color.fromRGBO(3, 18, 128, 1.0),
              //   ],
              // ),
              // 线向渐变效果
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 120, 255, 1.0),
                  Color.fromRGBO(3, 18, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
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
