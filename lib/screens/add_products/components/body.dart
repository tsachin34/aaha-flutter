import 'package:aaha/components/top_nav.dart';
import 'package:aaha/screens/store_edit_info/edit_store_screen.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

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
                          top: 170,
                          left: 130,
                          child: Container(
                            width: 220,
                            // color: Colors.red,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                  
                                    Navigator.pushNamed(
                                        context, EditStoreInfo.routeName);
                                  },
                                  child: Text(
                                    "Edit Personal Info",
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor),
                                  ),
                                ),
                                
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height:getProportionateScreenHeight(context, 10),),
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
                              "Add Product",
                              style: TextStyle(
                                  fontSize:
                                      getProportionateScreenWidth(context, 16)),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(context, 20),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          bottomLeft: Radius.circular(6))),
                                  child: const Icon(
                                    Icons.local_offer,
                                    size: 32,
                                  ),
                                ),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 4, color: Colors.white)),
                                        hintText: 'Product Name',
                                        contentPadding:
                                            EdgeInsets.only(left: 10)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(context, 20),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          bottomLeft: Radius.circular(6))),
                                  child: const Icon(
                                    Icons.text_snippet,
                                    size: 32,
                                  ),
                                ),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 4, color: Colors.white)),
                                        hintText: 'Product Description',
                                        contentPadding:
                                            EdgeInsets.only(left: 10)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(context, 20),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          bottomLeft: Radius.circular(6))),
                                  child: const Icon(
                                    Icons.attach_money,
                                    size: 32,
                                  ),
                                ),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 4, color: Colors.white)),
                                        hintText: 'Price',
                                        contentPadding:
                                            EdgeInsets.only(left: 10)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(context, 20),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          bottomLeft: Radius.circular(6))),
                                  child: const Icon(
                                    Icons.grid_view,
                                    size: 32,
                                  ),
                                ),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 4, color: Colors.white)),
                                        hintText: 'Category',
                                        contentPadding:
                                            EdgeInsets.only(left: 10)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(context, 20),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          bottomLeft: Radius.circular(6))),
                                  child: const Icon(
                                    Icons.tag,
                                    size: 32,
                                  ),
                                ),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 4, color: Colors.white)),
                                        hintText: 'Tags',
                                        contentPadding:
                                            EdgeInsets.only(left: 10)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(context, 20),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          bottomLeft: Radius.circular(6))),
                                  child: const Icon(
                                    Icons.check,
                                    size: 32,
                                  ),
                                ),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 4, color: Colors.white)),
                                        hintText: 'Stock',
                                        contentPadding:
                                            EdgeInsets.only(left: 10)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(context, 20),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(6),
                                          bottomLeft: Radius.circular(6))),
                                  child: const Icon(
                                    Icons.upload,
                                    size: 32,
                                  ),
                                ),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 4, color: Colors.white)),
                                        hintText: 'Upload Image',
                                        contentPadding:
                                            EdgeInsets.only(left: 10)),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30,
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
                                  'Continue',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
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
