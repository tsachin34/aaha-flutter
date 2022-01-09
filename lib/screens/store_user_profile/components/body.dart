import 'package:aaha/screens/components/top_nav.dart';
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
              // height: 450,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Theme.of(context).backgroundColor),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: Container(
                          width: double.infinity,
                          height: 160,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('images/headphones-cover.jpg'),
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 40,
                        height: 80,
                        width: 80,
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                  image: AssetImage(
                                      'images/fantech-logo.jpeg'))),
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 140,
                        child: Container(
                          width: 220,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:const [
                              Text("Contact: 9841516854"),
                              Icon(Icons.location_on_rounded)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(context, 50),),
                 Container(
                   height:384,
                   width: double.infinity,
                   child: StoreProductEdit(),
                 )


            
                  
                ],
              ))
        ],

      ),
      
    );
  }
}