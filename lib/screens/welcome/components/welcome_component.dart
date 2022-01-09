import 'package:aaha/screens/login/login_screen.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    Key? key,
    required this.headText,
    required this.bodyText,
  }) : super(key: key);
  final String headText, bodyText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(context, 30),
        ),
        Text(
          headText,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(context, 20),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: getProportionateScreenHeight(context, 10),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(context, 80)),
          child: Text(
            bodyText,
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
        ),
      ],
    );
  }
}
