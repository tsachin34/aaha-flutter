import 'package:aaha/screens/cart/components/body.dart';
import 'package:flutter/material.dart';


class UserCartScreen extends StatelessWidget {
  const UserCartScreen({ Key? key }) : super(key: key);

  static String routeName='/user_cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),

    );
  }
}