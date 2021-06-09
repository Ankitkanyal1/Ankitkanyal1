import 'package:flutter/material.dart';

import 'bottombar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BottomNavigationbar',
      theme: ThemeData(
      
        primarySwatch: Colors.amber,
         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomBar(),
    );
  }
}
