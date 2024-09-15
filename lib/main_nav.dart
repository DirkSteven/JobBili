import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:million_dollar_startup/pages/listings_page.dart';

import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/search_page.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int currentIndex = 0;

  final List<IconData> iconList = <IconData>[
    Icons.home_rounded,
    Icons.search_rounded,
    Icons.view_list_rounded,
    Icons.person_rounded,
  ];

  final List<Widget> pageList = <Widget>[
    HomePage(),
    SearchPage(),
    ListingsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pageList,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        shape: CircleBorder(),
        backgroundColor: Colors.amber,
        child: Icon(Icons.post_add_rounded),
      ),

      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList, 
        activeIndex: currentIndex, 
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 15.0, 
        rightCornerRadius: 15.0,
        backgroundColor: Colors.grey[900],
        activeColor: Colors.amber,
        inactiveColor: Colors.white,
      ),
    );
  }
}