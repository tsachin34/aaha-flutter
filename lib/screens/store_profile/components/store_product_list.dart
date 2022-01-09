import 'package:aaha/screens/product_details/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:aaha/size_config.dart';

class StoreProductPage extends StatelessWidget {
  const StoreProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(context, 15)),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.width - 30,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 15,
              childAspectRatio: 0.8,
              children: [
                _buildCard('Choco Mint', 'Rs 1100', 'images/key-mouse.jpg',
                    false, true, context),
                _buildCard('Choco Mint', 'Rs 1100', 'images/key-mouse.jpg',
                    false, false, context),
                _buildCard('Choco Mint', 'Rs 1100', 'images/key-mouse.jpg',
                    false, false, context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavrouite, context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5, left: 0, right: 0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailsPage(),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              // BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 5.0),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                name,
                style: TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Quicksand',
                    fontSize: 14.0),
              ),
              Row(children: [
                Text(
                  price,
                  style: TextStyle(
                      color: Color(0xFFCC8053),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
                Spacer(),
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.shopping_cart_outlined)
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
