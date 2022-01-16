import 'package:flutter/material.dart';


class Product{
  final String productName;
  final String price;
  final String imgPath;
  final bool added;
  final bool isFavourite;
  


  Product({ required this.productName, required this.price, required this.imgPath,required this.added, required this.isFavourite});


}