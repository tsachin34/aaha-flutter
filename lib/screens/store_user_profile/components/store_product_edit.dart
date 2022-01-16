import 'package:aaha/screens/add_products/add_product_screen.dart';
import 'package:aaha/screens/product_details/product_detail_screen.dart';
import 'package:aaha/screens/store_user_profile/components/product.dart';
import 'package:flutter/material.dart';
import 'package:aaha/size_config.dart';

class StoreProductEdit extends StatefulWidget {
  const StoreProductEdit({Key? key}) : super(key: key);

  @override
  State<StoreProductEdit> createState() => _StoreProductEditState();
}

List<Product> _item = [
  Product(imgPath: "none", name: "Add Product", price: "none"),
  Product(
      imgPath: "images/key-mouse.jpg", name: "Some Product", price: "Rs 400"),
      Product(
      imgPath: "images/key-mouse.jpg", name: "Some Product", price: "Rs 400"),
      Product(
      imgPath: "images/key-mouse.jpg", name: "Some Product", price: "Rs 400"),
      Product(
      imgPath: "images/key-mouse.jpg", name: "Some Product", price: "Rs 400"),
];

class _StoreProductEditState extends State<StoreProductEdit> {
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount: _item.length,
      primary: false,
      itemBuilder: (context, index) {
        if (index == 0) {
          return AddProduct();
        }
        ;

        return _buildCard(_item[index]);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 15,
      ),
    );
  }

  Widget _buildCard(Product product) {
   

    return Padding(
      
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 0, right: 0),
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
                product.name,
                style: TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Quicksand',
                    fontSize: 14.0),
              ),
              Row(children: [
                Text(
                  product.price,
                  style: TextStyle(
                      
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: (){},
                  icon: Icon(Icons.edit, size: 16,
                  color: Colors.green,),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                  ),
                 
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: (){
                      setState(() {
                        _item.remove(product);
                      });
                    },
                  icon: Icon(Icons.delete, size: 16,
                  color: Colors.red,),
                  ),
                )
                // Icon(Icons.favorite_border),
                // SizedBox(
                //   width: 10,
                // ),
                // Icon(Icons.shopping_cart_outlined)
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class AddProduct extends StatelessWidget {
  const AddProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.only(
          top: 5, bottom: 5, left: 0, right: 0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, AddProductScreen.routeName);
        },
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Theme.of(context).accentColor
      ),
      child: Icon(Icons.add_rounded,
      color: Colors.white,size: 54,),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "Add New Product",
              style: TextStyle(
     
      fontSize: 14.0),
            ),
            

          ],
        ),
      ),
    );
  }
}
