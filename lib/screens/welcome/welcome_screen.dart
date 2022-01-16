import 'package:aaha/screens/welcome/components/body.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  //user is directed to welcome screen when he opens app for the first time

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}