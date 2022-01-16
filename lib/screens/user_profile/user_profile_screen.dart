import 'package:aaha/components/bottom_nav.dart';
import 'package:aaha/screens/user_profile/components/body.dart';
import 'package:flutter/material.dart';


class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({ Key? key }) : super(key: key);
  static String routeName="/user_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}