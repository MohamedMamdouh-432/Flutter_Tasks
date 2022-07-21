import 'package:flutter/material.dart';
import 'pages/initial_page.dart';
import 'pages/explore_page.dart';

void main(List<String> args) {
  runApp(const SmartLibraryApp());
}

class SmartLibraryApp extends StatelessWidget {
  const SmartLibraryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'Initial Page':(context) => const InitialPage(),
        'Explore Page':(context) => ExplorePage(),
      },
      initialRoute: 'Initial Page',
    );
  }
}