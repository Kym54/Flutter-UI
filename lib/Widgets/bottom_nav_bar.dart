import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screens/discover_screen.dart';
import '../Screens/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }):super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.greenAccent,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(right: 50),
            child: IconButton(
              onPressed: (){
                Navigator.pushNamed(context,HomeScreen.routeName);
              },
              icon: const Icon(Icons.search),
            ),
          ),
          label: 'Search'),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: (){
                Navigator.pushNamed(context, DiscoverScreen.routeName);
              },
              icon: const Icon(Icons.home),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 50),
              child: IconButton(
                onPressed: (){
                  print('No profile yet');
                },
                icon: const Icon(Icons.person),
              ),
            ),
            label: 'Profile'),
      ],
    );
  }
}
