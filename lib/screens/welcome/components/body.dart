import 'package:aaha/screens/welcome/components/welcome_component.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';
import 'package:aaha/screens/login/login_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> welcomeData = [
    {
      "headtext": "WELCOME TO AAHA",
      "bodytext":
          "A platform specially designed for all the retailers, wholeshalers, manufacturers and brands to connect with the buyers more easily."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height:getProportionateScreenHeight(context, 400),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.elliptical(190, 130),
                ),
                color: Theme.of(context).accentColor,
              ),
              child: Column(
                children: [
                  const Spacer(flex: 2,),
                  Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: const Image(
                            image: AssetImage("images/logo-final-light.png")),
                      ))
                ],
              ),
            ),
          ),
          Expanded(
              child: PageView.builder(
                  itemCount: welcomeData.length,
                  itemBuilder: (context, index) => WelcomeContent(
                        headText: welcomeData[index]["headtext"]!,
                        bodyText: welcomeData[index]["bodytext"]!,
                      ))),
          Container(
              margin: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10)),
              width: 300,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "PROCEED TO REGISTER",
                    style: TextStyle(color: Colors.white),
                  ))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "or,",
                style: TextStyle(color: Colors.black45),
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      // padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft),
                  child: const Text(
                    "QUIT",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w600),
                  ))
            ],
          )
        ]);
  }
}
