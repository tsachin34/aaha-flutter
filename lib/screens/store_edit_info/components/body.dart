import 'package:aaha/components/top_nav.dart';
import 'package:aaha/screens/store_edit_info/components/suffix_Icon.dart';
import 'package:aaha/screens/store_edit_info/edit_store_screen.dart';
import 'package:aaha/screens/user_profile/user_profile_screen.dart';
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
                                    "View Products",
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor),
                                  ),
                                ),
                                const Spacer(),
                                 TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, UserProfileScreen.routeName);
                                  },
                                  child: Text(
                                    "User Profile",
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
                  SizedBox(
                    height: getProportionateScreenHeight(context, 10),
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
                              "Personal Information",
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
                                    Icons.account_circle,
                                    size: 32,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: getProportionateScreenWidth(
                                                context, 15),
                                            left: getProportionateScreenWidth(
                                                context, 10)),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 4,
                                                    color: Colors.white)),
                                        hintText: 'Fantech Nepal',
                                        suffixIcon: const SuffixIcon()),
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
                                    Icons.mail_rounded,
                                    size: 32,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 4, color: Colors.white)),
                                      hintText: 'fantech2050@gmail.com',
                                      contentPadding: EdgeInsets.only(
                                          top: getProportionateScreenWidth(
                                              context, 15),
                                          left: getProportionateScreenWidth(
                                              context, 10)),
                                      // suffixIcon: const SuffixIcon(),
                                    ),
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
                                    Icons.location_on_rounded,
                                    size: 32,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 4, color: Colors.white)),
                                      hintText: 'Dillibazar, Kathmandu',
                                      contentPadding: EdgeInsets.only(
                                          top: getProportionateScreenWidth(
                                              context, 15),
                                          left: getProportionateScreenWidth(
                                              context, 10)),
                                      suffixIcon: const SuffixIcon(),
                                    ),
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
                                    Icons.phone,
                                    size: 32,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 4, color: Colors.white)),
                                      hintText: '9841111111',
                                      contentPadding: EdgeInsets.only(
                                          top: getProportionateScreenWidth(
                                              context, 15),
                                          left: getProportionateScreenWidth(
                                              context, 10)),
                                      suffixIcon: SuffixIcon(),
                                    ),
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
                                    Icons.add_ic_call,
                                    size: 32,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 4, color: Colors.white)),
                                      hintText: 'Secondary Call',
                                      contentPadding: EdgeInsets.only(
                                          top: getProportionateScreenWidth(
                                              context, 15),
                                          left: getProportionateScreenWidth(
                                              context, 10)),
                                      suffixIcon: SuffixIcon(),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(context, 30),
                            ),
                            Text(
                              "Security",
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
                                    Icons.vpn_key_rounded,
                                    size: 32,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      suffixIcon: const SuffixIcon(),
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 4, color: Colors.white)),
                                      hintText: 'Change Password',
                                      contentPadding: EdgeInsets.only(
                                          top: getProportionateScreenWidth(
                                              context, 15),
                                          left: getProportionateScreenWidth(
                                              context, 10)),
                                    ),
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
