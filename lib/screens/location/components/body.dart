import 'package:aaha/screens/cart/components/increase_item.dart';
import 'package:aaha/components/top_nav.dart';
import 'package:aaha/screens/location/components/location.dart';
import 'package:aaha/screens/product_details/product_detail_screen.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

List<Location> _locationitem = [
  Location(locationName: 'Anamnagar', distance: '0.5m'),
  Location(locationName: 'Ason', distance: '12.5m'),
  Location(locationName: 'Basantapur', distance: '5.4m'),
];

Widget _buildLocationList(Location locationitem) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        locationitem.locationName,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        locationitem.distance,
      )
    ],
  );
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const TopNavContent(),
          Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Theme.of(context).backgroundColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Search by location",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 530,
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) =>
                          _buildLocationList(_locationitem[index]),
                      separatorBuilder: (context, _) => SizedBox(
                        height: 20,
                      ),
                      itemCount: _locationitem.length,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
