import 'package:aaha/screens/categories/components/category_data.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';

class ElectronicsScreen extends StatelessWidget {
  const ElectronicsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Category> _category = [
      Category(catImg: "images/smartphone-cover.jpg", catTitle: "Smartphones"),
      Category(catImg: "images/tablet-cover.jpg", catTitle: "Tablets"),
      Category(catImg: "images/smartphone-cover.jpg", catTitle: "Smartphones"),
      Category(catImg: "images/tablet-cover.jpg", catTitle: "Tablets"),
    ];

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
        Container(
          // color: Colors.blue,
          height: getProportionateScreenHeight(context, 440),
          child: ListView.separated(
              itemBuilder: (context, index) =>
                  _buildCatCard(context, _category[index]),
              separatorBuilder: (context, _) => const SizedBox(
                    height: 20,
                  ),
              itemCount: _category.length),
        ),
        // SizedBox(
        //   height: getProportionateScreenHeight(context, 20),
        // ),

        // _buildCatCard(context)
      ],
    );
  }

  Column _buildCatCard(BuildContext context, Category category) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category.catTitle,
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
              image: DecorationImage(
                  image: AssetImage(category.catImg), fit: BoxFit.cover)),
        ),
      ],
    );
  }
}
