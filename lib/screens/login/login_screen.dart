import 'package:aaha/screens/home/home_screen.dart';
import 'package:aaha/screens/login/components/body.dart';
import 'package:aaha/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: SafeArea(
        child: Body(),
      ),
    );
  }
}

