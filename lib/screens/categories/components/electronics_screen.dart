import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';

class ElectronicsScreen extends StatelessWidget {
  const ElectronicsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Electronics Devices",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(context, 18),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(context, 20),
        ),
        Text(
          "Smartphones",
          style: TextStyle(fontSize: getProportionateScreenWidth(context, 16)),
        ),
        SizedBox(
          height: getProportionateScreenHeight(context, 14),
        ),
        Container(
          width: double.infinity,
          height: getProportionateScreenWidth(context, 100),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:const DecorationImage(
                  image: AssetImage('images/smartphone-cover.jpg'),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          height: getProportionateScreenWidth(context, 15),
        ),
        Text(
          "Tablets",
          style: TextStyle(fontSize: getProportionateScreenWidth(context, 16)),
        ),
        SizedBox(
          height: getProportionateScreenHeight(context, 14),
        ),
        Container(
          width: double.infinity,
          height: getProportionateScreenWidth(context, 100),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('images/tablet-cover.jpg'),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }
}
