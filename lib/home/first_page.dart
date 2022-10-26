import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:foody/menu/favorites.dart';
import 'package:foody/menu/home-page.dart';
import 'package:foody/menu/location.dart';
import 'package:foody/menu/perfile.dart';
import 'package:foody/menu/shoping.dart';

class ShopPage extends StatefulWidget {
  @override
  State<ShopPage> createState() => _HomePageState();
}

class _HomePageState extends State<ShopPage> {
  int selected = 0;
  final _pageOption = [
    HomePage(),
    LocationPages(),
    ShopingPages(),
    FavoritesPages(),
    ProfilePages()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOption[selected],
      bottomNavigationBar: ConvexAppBar.badge(const {3: "+99"},
          elevation: 1,
          backgroundColor: Colors.white,
          style: TabStyle.fixedCircle,
          color: Colors.grey.shade400,
          activeColor: Colors.redAccent,
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.location_on, title: 'Location'),
            TabItem(icon: Icons.shopping_cart, title: 'Shope'),
            TabItem(icon: Icons.star, title: 'stors'),
            TabItem(icon: Icons.person, title: 'persion'),
          ],
          initialActiveIndex: selected, onTap: (int i) {
        setState(() {
          selected = i;
        });
      }),
    );
  }
}
