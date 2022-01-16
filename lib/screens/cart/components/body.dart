import 'package:aaha/screens/cart/components/increase_item.dart';
import 'package:aaha/components/top_nav.dart';
import 'package:aaha/screens/product_details/product_detail_screen.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const TopNavContent(),
          Container(
              width: double.infinity,
              // height: 450,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Theme.of(context).backgroundColor),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(context, 10),
                  ),
                  SizedBox(
                    height: 600,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    getProportionateScreenWidth(context, 20)),
                            width: double.infinity,
                            
                            height:
                                getProportionateScreenHeight(context, 500),
                            child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: getProportionateScreenHeight(
                                          context, 30),
                                    ),
                                    Container(
                                      height: getProportionateScreenWidth(
                                          context, 130),
                                      decoration: BoxDecoration(
                                        // color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context,
                                                  ProductDetailsPage
                                                      .routeName);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image:
                                                      const DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                            'images/key-mouse.jpg',
                                                          )),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: double.infinity,
                                              width: double.infinity,
                                            ),
                                          )),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                  vertical: 5),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: const [
                                                      Text(
                                                        "Xbox 360 Control..",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        "Rs 1000",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "Fantech",
                                                    style: TextStyle(
                                                        fontSize: 16),
                                                  ),
                                                  Spacer(),
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        const Text(
                                                          "Qty",
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              getProportionateScreenWidth(
                                                                  context,
                                                                  10),
                                                        ),
                                                        const IncreaseItem(),
                                                        const Spacer(),
                                                        const Text("Remove"),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              // color: Colors.red,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    
                                    
                                  ]),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 400,
                            bottom: 0,
                            left: 0,
                            right: 0,                           
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                              width: double.infinity,
                              height: 200,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  
                                  Center(
                                    child: Container(
                                      width: 200,
                                      height: 100,
                                      // color: Colors.red,
                                      child: Column(
                                        children: [
                                          Row(children: [
                                            Text("Sub-Total:",
                                            style:TextStyle(fontSize: 16) ),
                                            Spacer(),
                                            Text("Rs 1000",
                                            style:TextStyle(fontSize: 16))
                                          ],),
                                          Row(children: [
                                            Text("Shipping:",
                                            style:TextStyle(fontSize: 16)),
                                            Spacer(),
                                            Text("Rs 50",
                                            style:TextStyle(fontSize: 16)),

                                          ],),
                                          SizedBox(height: 10,),
                                          Container(height: 2,width: 100,
                                          decoration: BoxDecoration(color: Theme.of(context).accentColor),),
                                          SizedBox(height: 10,),
                                          Text("Total: Rs 1050",
                                          style:TextStyle(fontSize: 16)),
                                        ],
                                      ),
                                    ),
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
                                      'CONTINUE TO CHECKOUT',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                ],
                              ),
                            ),)
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
