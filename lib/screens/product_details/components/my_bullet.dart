import 'package:flutter/material.dart';


class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top:3),
      height: 8,
      width: 8,
  decoration: new BoxDecoration(
    color: Colors.black,
    shape: BoxShape.circle,
  ),
  );
  }
}

