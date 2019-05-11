import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //横排 Row，竖排 Column
      child: Column(
        // 主轴
        mainAxisAlignment: MainAxisAlignment.center,
        // 交叉轴
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // IconBadge(Icons.pool),
          // IconBadge(
          //   Icons.beach_access,
          //   size: 64.0,
          // ),
          // IconBadge(Icons.airplanemode_active),
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                Icons.brightness_2,
                color: Colors.white,
                size: 32.0,
              ),
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

  IconBadge(
    this.icon, {
    this.size = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
