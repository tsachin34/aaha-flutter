import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 20,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, "/home");
                break;
              case 1:
                Navigator.pushNamed(context, "/categories");
                break;
              case 2:
                Navigator.pushNamed(context, "/user_cart");
                break;
              case 3:
                Navigator.pushNamed(context, "/location");
                break;
              case 4:
                Navigator.pushNamed(context, "/store_user_profile");
                break;
            }
            // setState(() => currentIndex = index);
          },
          backgroundColor: Theme.of(context).accentColor,
          unselectedItemColor: Theme.of(context).secondaryHeaderColor,
          selectedItemColor: Colors.white,
          iconSize: 20,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_outlined),
                label: "Categories",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Cart",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_searching_rounded),
                label: "Location",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: "Profile",
                backgroundColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}
