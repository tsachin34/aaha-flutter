import 'package:aaha/components/top_nav.dart';
import 'package:aaha/screens/store_profile/store_profile_screen.dart';
import 'package:flutter/material.dart';

class CardItem {
  final String assetImg;

  const CardItem({required this.assetImg});
}



class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<CardItem> items = const [
    CardItem(assetImg: "images/product-1.jpg"),
    CardItem(assetImg: "images/product-1.jpg"),
    CardItem(assetImg: "images/product-1.jpg"),
    CardItem(assetImg: "images/product-1.jpg")
  ];

  Widget buildCard(CardItem item) => Container(
      width: 55,
      child: AspectRatio(
        aspectRatio: 4 / 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image(
            image: AssetImage(item.assetImg),
          ),
        ),
      ));

 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            TopNavContent(),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Theme.of(context).backgroundColor),
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Stores",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Icon(Icons.reorder_outlined),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: Theme.of(context).accentColor),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              StoreProfile()));
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'images/chanel-logo.png',
                                          )),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              )),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(9),
                                          bottomRight: Radius.circular(9))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Juju Wears",
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1!
                                                        .color,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "Lazimpat Rd",
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .secondaryHeaderColor,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.star_rate_sharp,
                                                    color: Colors.yellow,
                                                    size: 14,
                                                  ),
                                                  Icon(Icons.star_rate_sharp,
                                                      color: Colors.yellow,
                                                      size: 14),
                                                  Icon(Icons.star_rate_sharp,
                                                      color: Colors.yellow,
                                                      size: 14),
                                                  Icon(Icons.star_rate_sharp,
                                                      color: Colors.yellow,
                                                      size: 14),
                                                  Icon(Icons.star_rate_sharp,
                                                      color: Colors.white,
                                                      size: 14),
                                                ],
                                              ),
                                              Text(
                                                "4.2(72)",
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .secondaryHeaderColor,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Featured Products",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(height: 5),
                                      Container(
                                        height: 55,
                                        child: ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, _) =>
                                              const SizedBox(width: 10),
                                          itemBuilder: (context, index) =>
                                              buildCard(items[index]),
                                          itemCount: 4,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                )),
          ],
        ),
      );
  }
}