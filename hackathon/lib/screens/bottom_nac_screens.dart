import 'package:flutter/material.dart';
import 'package:hackathon/screens/cart_screen.dart';
import 'package:hackathon/screens/top_tab_bar.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = 'TabsScreen';
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, dynamic>> pages;
  int selectedPageIndex = 0;
  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    pages = [
      {'page': TopTabBar(), 'title': 'Home Page'},
      {'page': CartScreen(), 'title': 'Cart'},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        currentIndex: selectedPageIndex,
        // type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).colorScheme.primary,
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).colorScheme.primary,
              icon: Icon(Icons.shopping_bag),
              label: 'Cart'),
        ],
      ),
    );
  }
}
