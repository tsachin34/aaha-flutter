import 'package:aaha/screens/login/components/top_logo.dart';
import 'package:aaha/screens/login/login_screen.dart';
import 'package:aaha/screens/signup/components/signup_form.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: SizedBox(
            child: ListView(
              shrinkWrap: true,
              children: [
                const TopLogo(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "WELCOME BACK",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SignUpForm()
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}