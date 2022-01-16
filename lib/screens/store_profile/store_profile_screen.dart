import 'package:aaha/components/bottom_nav.dart';
import 'package:aaha/screens/home/home_screen.dart';
import 'package:aaha/screens/login/login_screen.dart';
import 'package:aaha/screens/product_details/product_detail_screen.dart';
import 'package:aaha/screens/store_profile/components/store_product_list.dart';
import 'package:aaha/screens/store_profile/components/body.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';

class StoreProfile extends StatefulWidget {
  const StoreProfile({Key? key}) : super(key: key);
  static String routeName='/profile';
  @override
  _StoreProfileState createState() => _StoreProfileState();
}

class _StoreProfileState extends State<StoreProfile> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}
