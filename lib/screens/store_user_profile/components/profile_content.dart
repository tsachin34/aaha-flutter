import 'package:aaha/screens/store_user_profile/components/store_product_edit.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Column(
          children: [
            SingleChildScrollView(
              child: Container(
                height: isLandscape ? constraints.maxHeight * 0.35 : 200,
                width: double.infinity,
                // color: Colors.red,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      child: Container(
                        width: double.infinity,
                        height: getProportionateScreenWidth(context, 150),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/headphones-cover.jpg'),
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 40,
                      child: Container(
                        width: getProportionateScreenWidth(context, 300),

                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: getProportionateScreenWidth(context, 70),
                              width: getProportionateScreenWidth(context, 70),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                      image: AssetImage(
                                          'images/fantech-logo.jpeg'))),
                            ),
                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,

                              children: const [
                                Text("Contact: 9841516854"),
                                Icon(Icons.location_on_rounded)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.blue,
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(context, 15)),
              height: constraints.maxHeight * 0.65,
              width: double.infinity,
              child: StoreProductEdit(),
            )
          ],
        );
      },
    );
  }
}
