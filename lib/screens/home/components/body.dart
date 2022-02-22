import 'package:aaha/components/top_nav.dart';
import 'package:aaha/screens/home/components/storedata.dart';
import 'package:aaha/screens/store_profile/store_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:aaha/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // final List<CardItem> _items = const [
  //   CardItem(assetImg: "images/product-1.jpg"),
  //   CardItem(assetImg: "images/product-1.jpg"),
  //   CardItem(assetImg: "images/product-1.jpg"),
  //   CardItem(assetImg: "images/product-1.jpg")
  // ];

  final List<StoreData> _store = [
    StoreData(
      storeName: "Juju Wears",
      location: "Lazimpat",
      featured: const [
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg")
      ],
      coverImg: 'images/chanel-logo.png',
    ),
    StoreData(
      storeName: "Juju Wears",
      location: "Lazimpat",
      featured: const [
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg")
      ],
      coverImg: 'images/chanel-logo.png',
    ),
    StoreData(
      storeName: "Juju Wears",
      location: "Lazimpat",
      featured: const [
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg")
      ],
      coverImg: 'images/chanel-logo.png',
    )
    ,
    StoreData(
      storeName: "Juju Wears",
      location: "Lazimpat",
      featured: const [
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg"),
        CardItem(assetImg: "images/product-1.jpg")
      ],
      coverImg: 'images/chanel-logo.png',
    )
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
              height: (MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top-MediaQuery.of(context).padding.bottom)*0.837,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Theme.of(context).backgroundColor),
              child: LayoutBuilder(
                builder: (ctx,constraints){
                  return Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      height: constraints.maxHeight*0.06,
                      child: Row(
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
                    ),
                    SizedBox(height: constraints.maxHeight*0.02,),
                    Container(
                      // color: Colors.green,
                      height: constraints.maxHeight*0.92,
                      child: ListView.separated(
                        separatorBuilder: (context, _) => SizedBox(
                          height: getProportionateScreenHeight(context, 20),
                        ),
                        itemCount: _store.length,
                        itemBuilder: (BuildContext context, index) =>
                            _buildStoreCard(context, _store[index]),
                      ),
                    ),
                  ],
                );
                },
               
              )),
        ],
      ),
    );
  }

  Container _buildStoreCard(BuildContext context, StoreData store) {
    return Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Theme.of(context).accentColor),
        ),
        child: Row(
          children: [
            Expanded(
                child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StoreProfile()));
              },
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          store.coverImg,
                        )),
                    borderRadius: const BorderRadius.only(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              store.storeName,
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontSize: 16),
                            ),
                            Text(
                              store.location,
                              style: TextStyle(
                                  color: Theme.of(context).secondaryHeaderColor,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.star_rate_sharp,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                Icon(Icons.star_rate_sharp,
                                    color: Colors.yellow, size: 14),
                                Icon(Icons.star_rate_sharp,
                                    color: Colors.yellow, size: 14),
                                Icon(Icons.star_rate_sharp,
                                    color: Colors.yellow, size: 14),
                                Icon(Icons.star_rate_sharp,
                                    color: Colors.white, size: 14),
                              ],
                            ),
                            Text(
                              "4.2(72)",
                              style: TextStyle(
                                  color: Theme.of(context).secondaryHeaderColor,
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
                          color: Theme.of(context).textTheme.bodyText1!.color,
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
                            buildCard(store.featured[index]),
                        itemCount: 4,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
