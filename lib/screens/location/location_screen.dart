import 'package:aaha/screens/components/bottom_nav.dart';
import 'package:aaha/screens/location/components/body.dart';
import 'package:flutter/material.dart';


class LocationScreen extends StatelessWidget {
  const LocationScreen({ Key? key }) : super(key: key);
  static String routeName ='/location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}