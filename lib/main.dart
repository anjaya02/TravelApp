import 'package:flutter/material.dart';
import 'package:travelapp/pages/home_page.dart';
// import 'package:travelapp/pages/natural_wonders.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Awesome Places Flutter',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // NaturalWondersPage(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
