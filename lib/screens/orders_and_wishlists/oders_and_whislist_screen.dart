import 'package:aaha/screens/orders_and_wishlists/components/body.dart';
import 'package:flutter/material.dart';



class OrdersWishlistScreen extends StatelessWidget {
  const OrdersWishlistScreen({ Key? key }) : super(key: key);
  static String routeName= '/orders_and_whishlists';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}