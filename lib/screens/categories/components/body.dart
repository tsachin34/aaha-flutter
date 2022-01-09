import 'package:aaha/screens/categories/components/electronics_screen.dart';
import 'package:aaha/screens/components/top_nav.dart';
import 'package:aaha/screens/store_edit_info/edit_store_screen.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedINdex = 2;

  final tabs = [
    ElectronicsScreen(),
    Center(child: Text("hello")),
   ElectronicsScreen(),
    Center(child: Text("pretty")),
    Center(child: Text("stranger")),
  ];

  final List<IconData> _icons = [
    FontAwesomeIcons.carAlt,
    FontAwesomeIcons.cut,
    Icons.devices,
    FontAwesomeIcons.plug,
    Icons.bed,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedINdex = index;
        });
      },
      child: Container(
          height: getProportionateScreenWidth(context, 50),
          width: getProportionateScreenWidth(context, 50),
          decoration: BoxDecoration(
              color: _selectedINdex == index
                  ? Theme.of(context).accentColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(5)),
          child: Icon(
            _icons[index],
            size: getProportionateScreenWidth(context, 30),
            color: _selectedINdex == index
                ? Colors.white
                : Theme.of(context).accentColor,
          )),
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
                    height: getProportionateScreenHeight(context, 10),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(context, 20)),
                    width: double.infinity,
                    height: getProportionateScreenHeight(context, 500),
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                  fontSize:
                                      getProportionateScreenWidth(context, 18)),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(context, 20),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: _icons
                                    .asMap()
                                    .entries
                                    .map(
                                      (MapEntry map) => _buildIcon(map.key),
                                    )
                                    .toList()),
                            SizedBox(
                              height: getProportionateScreenHeight(context, 20),
                            ),
                            tabs[_selectedINdex],
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
