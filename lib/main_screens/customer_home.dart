import 'package:fl_tienda_online/main_screens/category_screen.dart';
import 'package:fl_tienda_online/main_screens/home.dart';
import 'package:fl_tienda_online/provider/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CustomerHomeScreen extends StatefulWidget {
  CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Pages(),
      bottomNavigationBar: _Navigation(),
    );
  }
}

class _Navigation extends StatelessWidget {
  const _Navigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerNavigation = Provider.of<NavigationProvider>(context);

    return BottomNavigationBar(
      currentIndex: providerNavigation.paginaActual,
      onTap: (index) => providerNavigation.paginaActual = index,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Category'),
        BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: 'Stores'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
      ]
      );
  }
}

class _Pages extends StatelessWidget {
  const _Pages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerNavigation = Provider.of<NavigationProvider>(context);
    return PageView(
      controller: providerNavigation.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Home(),
        CategorySceen(),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green,
        )
      ],
    );
  }
}