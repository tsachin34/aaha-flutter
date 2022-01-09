import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final double rating, price;
  final bool isFavourite, isPopular;
  final List<Color> colors;

  Product({
    required this.images,
    required this.colors,
    required this.price,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.description,
  });
}

//aaha products
List<Product> sampleProducts = [
  Product(
      images: [],
      colors: [],
      price: 1100,
      title: "GM-5319 Prime",
      description: "the product desc")
];
