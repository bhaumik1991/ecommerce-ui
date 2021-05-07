import 'package:ecommerce_ui/page_navigation/page_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce UI',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: PageNavigation(),
    );
  }
}

