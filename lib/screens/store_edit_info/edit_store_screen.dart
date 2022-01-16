import 'package:aaha/components/bottom_nav.dart';
import 'package:aaha/screens/store_edit_info/components/body.dart';
import 'package:flutter/material.dart';


class EditStoreInfo extends StatelessWidget {
  const EditStoreInfo({ Key? key }) : super(key: key);
  static String routeName='/edit_store_info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }

}