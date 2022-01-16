import 'package:aaha/components/bottom_nav.dart';
import 'package:aaha/screens/store_profile/store_profile_screen.dart';
import 'package:aaha/screens/home/components/body.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);
  static String routeName ='/home';


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}



