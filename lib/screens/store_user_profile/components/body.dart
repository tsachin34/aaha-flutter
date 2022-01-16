import 'package:aaha/components/top_nav.dart';
import 'package:aaha/screens/store_user_profile/components/profile_content.dart';
import 'package:aaha/screens/store_user_profile/components/store_product_edit.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TopNavContent(),
          Container(
              //  padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height:(MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top-MediaQuery.of(context).padding.bottom)*0.837,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,),

              child: ProfileContent())
        ],

      ),
      
    );
  }
}
