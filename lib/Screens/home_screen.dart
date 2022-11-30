

import 'package:flutter/material.dart';

import '../Widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

static const routeName='/Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const BottomNavBar(index:0),
        body:Container(),
      );
  }
}


