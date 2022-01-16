import 'package:aaha/screens/product_details/product_detail_screen.dart';
import 'package:aaha/screens/store_profile/components/product.dart';
import 'package:flutter/material.dart';
import 'package:aaha/size_config.dart';

//displays all the products available in the profile of a store

class StoreProductPage extends StatefulWidget {
  const StoreProductPage({Key? key}) : super(key: key);

  @override
  State<StoreProductPage> createState() => _StoreProductPageState();
}

List<Product> _productitem = [
  Product(
      productName: "Choco Mint",
      price: "Rs 1100",
      imgPath: "images/key-mouse.jpg",
      added: false,
      isFavourite: false)
];

class _StoreProductPageState extends State<StoreProductPage> {
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
            child: GridView.builder(
              // crossAxisCount: 2,
              itemCount: _productitem.length,
              primary: false,
              // crossAxisSpacing: 15,
              // childAspectRatio: 0.8,
              itemBuilder: (context,index)=>_buildCard(_productitem[index]),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 15
              ),
              
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Product product) {
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
                      image: AssetImage(product.imgPath),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                product.productName,
                style: TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Quicksand',
                    fontSize: 14.0),
              ),
              Row(children: [
                Text(
                  product.price,
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
