import 'package:flutter/material.dart';

class StoreData {
  final String coverImg;
  final String storeName;
  final String location;
  final List<CardItem> featured;

  StoreData(
      {required this.storeName, required this.location, required this.featured,required this.coverImg});
}

class CardItem {
  final String assetImg;

  const CardItem({required this.assetImg});
}

