import 'package:aaha/components/top_nav.dart';
import 'package:aaha/screens/add_products/components/addproduct_form.dart';
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
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top -
                      MediaQuery.of(context).padding.bottom) *
                  0.837,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Theme.of(context).backgroundColor),
              child: LayoutBuilder(
                builder: (ctx, constraints) {
                  return Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.34,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                width: double.infinity,
                                height: 160,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'images/headphones-cover.jpg'),
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
                                            color:
                                                Theme.of(context).accentColor),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                getProportionateScreenWidth(context, 20)),
                        width: double.infinity,
                        height: getProportionateScreenHeight(
                            context, constraints.maxHeight * 0.66),
                        child: SingleChildScrollView(child: AddProductForm()),
                      )
                    ],
                  );
                },
              ))
        ],
      ),
    );
  }
}
