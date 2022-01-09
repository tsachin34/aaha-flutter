import 'package:aaha/screens/add_products/components/body.dart';
import 'package:aaha/screens/components/bottom_nav.dart';
import 'package:flutter/material.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}