


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/Screens/Article_screen.dart';
import 'package:news/Screens/discover_screen.dart';
import 'package:news/Screens/home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sam News App UI',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),

      initialRoute: '/',
      routes: {
        HomeScreen.routeName:(context) => const HomeScreen(),
        DiscoverScreen.routeName:(context) => const DiscoverScreen(),
    ArticleScreen.routeName:(context) =>const ArticleScreen(),
      },
    );
  }
}
