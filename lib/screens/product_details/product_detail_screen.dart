import 'package:aaha/constants.dart';
import 'package:aaha/components/bottom_nav.dart';
import 'package:aaha/components/top_nav.dart';
import 'package:aaha/screens/home/home_screen.dart';
import 'package:aaha/screens/product_details/components/my_bullet.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';

import 'components/increase_item.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);
  static String routeName='/product_details';

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}



class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopNavContent(),
            Container(
              width: double.infinity,
              height: 590,
              decoration: const BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Container(
                      width: double.infinity,
                      height: 350,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/key-mouse.jpg'),
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                    ),
                  ),
                  IncreaseItem(),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      top: 330,
                      left: 0,
                      child: SizedBox(
                        height: 300,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                getProportionateScreenHeight(context, 30),
                            vertical: getProportionateScreenHeight(context, 10),
                          ),
                          decoration: BoxDecoration(
                              color: Theme.of(context).backgroundColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  "Gaming Mouse GM-5319 Prime Edition",
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(
                                          context, 16)),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: getProportionateScreenHeight(
                                          context, 8)),
                                  height:
                                      getProportionateScreenHeight(context, 3),
                                  width:
                                      getProportionateScreenWidth(context, 60),
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Text(
                                  "Rs. 1100",
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(
                                          context, 14),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Stock",
                                  style: TextStyle(color: Colors.green),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  // margin: const EdgeInsets.only(top: 25),
                                  width: double.infinity,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'ADD TO CART',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Description",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize:
                                                getProportionateScreenWidth(
                                                    context, 16)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                          "Meetion Gaming Mouse Hades G3325"),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const ListTile(
                                        leading: Icon(
                                          Icons.fiber_manual_record,
                                          size: 10,
                                        ),
                                        title: Text(
                                            "Cool and ergonomic appearance is born for gaming."),
                                        minLeadingWidth: 10,
                                      ),
                                      const ListTile(
                                        leading: Icon(
                                          Icons.fiber_manual_record,
                                          size: 10,
                                        ),
                                        title: Text(
                                            "Full curves designed is for right-handed control mouse to ensure have a good hand feeling when in battle"),
                                        minLeadingWidth: 10,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
