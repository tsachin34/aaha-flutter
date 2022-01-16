import 'package:aaha/screens/add_products/add_product_screen.dart';
import 'package:aaha/screens/cart/user_cart_screen.dart';
import 'package:aaha/screens/categories/categories_screen.dart';
import 'package:aaha/screens/home/home_screen.dart';
import 'package:aaha/screens/location/location_screen.dart';
import 'package:aaha/screens/orders_and_wishlists/oders_and_whislist_screen.dart';
import 'package:aaha/screens/product_details/product_detail_screen.dart';
import 'package:aaha/screens/store_edit_info/edit_store_screen.dart';
import 'package:aaha/screens/store_profile/store_profile_screen.dart';
import 'package:aaha/screens/store_user_profile/user_profile_screen.dart';
import 'package:aaha/screens/user_profile/user_profile_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => const HomePage(),
  StoreProfile.routeName: (context) => const StoreProfile(),
  StoreUserProfile.routeName: (context) => const StoreUserProfile(),
  EditStoreInfo.routeName: (context) => EditStoreInfo(),
  UserProfileScreen.routeName: (context) => UserProfileScreen(),
  CategoriesScreen.routeName: (context) => CategoriesScreen(),
  UserCartScreen.routeName: (context) => UserCartScreen(),
  ProductDetailsPage.routeName: (context) => ProductDetailsPage(),
  OrdersWishlistScreen.routeName: (context) => OrdersWishlistScreen(),
  LocationScreen.routeName: (context) => LocationScreen(),
  AddProductScreen.routeName: (context) => AddProductScreen(),
};
