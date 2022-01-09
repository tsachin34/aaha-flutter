import 'package:aaha/screens/components/top_nav.dart';
import 'package:aaha/screens/home/components/body.dart';
import 'package:aaha/screens/orders_and_wishlists/components/wishlistitem.dart';
import 'package:aaha/screens/orders_and_wishlists/oders_and_whislist_screen.dart';
import 'package:aaha/screens/product_details/product_detail_screen.dart';
import 'package:aaha/screens/store_edit_info/edit_store_screen.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<WishListItem> items = [
    WishListItem(assetImg: "images/nvidia.jpg", title: "Nvidia GTX 1080"),
    WishListItem(assetImg: "images/nvidia.jpg", title: "Nvidia GTX 1080"),
    WishListItem(assetImg: "images/nvidia.jpg", title: "Nvidia GTX 1080"),
  ];

  Widget _buildCard(WishListItem item) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(item.assetImg), fit: BoxFit.cover)),
            height: 90,
            width: 90,
          ),
          Text(item.title),
          Text(
            "Remove",
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }

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
                    height: 210,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: double.infinity,
                            height: 160,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/user-cover.jpg'),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'images/user-profile-img.jpg'))),
                          ),
                        ),
                        Positioned(
                          top: 170,
                          left: 130,
                          width: 250,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Orders and Wishlists",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: getProportionateScreenWidth(
                                          context, 12),
                                      color: Theme.of(context).accentColor),
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, EditStoreInfo.routeName);
                                },
                                child: Text(
                                  "Personal Info",
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(
                                          context, 12),
                                      color: Theme.of(context).accentColor),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(context, 20),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(context, 20)),
                    width: double.infinity,
                    height: getProportionateScreenHeight(context, 380),
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Orders",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: getProportionateScreenWidth(context, 90),
                              decoration: BoxDecoration(
                                // color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          ProductDetailsPage.routeName);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'images/key-mouse.jpg',
                                              )),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: double.infinity,
                                      width: double.infinity,
                                    ),
                                  )),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Gaming Mouse GM-59 Prime Edition",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Quantity x1",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Ordered On:-",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("2nd December")
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Delivered On:-",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("")
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "Paid,not delivered yet",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                      // color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: getProportionateScreenWidth(context, 90),
                              decoration: BoxDecoration(
                                // color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          ProductDetailsPage.routeName);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'images/key-mouse.jpg',
                                              )),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: double.infinity,
                                      width: double.infinity,
                                    ),
                                  )),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Gaming Mouse GM-59 Prime Edition",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Quantity x1",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Ordered On:-",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("2nd December")
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Delivered On:-",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("")
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "Paid,not delivered yet",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                      // color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text("My Whishlist"),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 130,
                              width: double.infinity,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => _buildCard(items[index]),
                                  separatorBuilder: (context, _) =>
                                      const SizedBox(
                                        width: 20,
                                      ),
                                  itemCount: items.length),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ]),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
