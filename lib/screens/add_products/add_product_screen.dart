import 'package:aaha/screens/add_products/components/body.dart';
import 'package:aaha/components/bottom_nav.dart';
import 'package:flutter/material.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({ Key? key }) : super(key: key);
  static String routeName= '/add_product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}