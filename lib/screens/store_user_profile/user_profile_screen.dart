import 'package:aaha/screens/components/bottom_nav.dart';
import 'package:aaha/screens/store_user_profile/components/body.dart';
import 'package:flutter/material.dart';


class StoreUserProfile extends StatelessWidget {
  const StoreUserProfile({ Key? key }) : super(key: key);
  static String routeName = '/store_user_profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}