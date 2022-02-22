import 'package:aaha/components/bottom_nav.dart';
import 'package:aaha/screens/categories/components/body.dart';
import 'package:flutter/material.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({ Key? key }) : super(key: key);
  static String routeName='/categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNav(),
      backgroundColor: Colors.white,
    );
  }
}