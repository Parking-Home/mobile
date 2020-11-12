import 'package:flutter/material.dart';
import 'package:parking_at_home/login_page.dart';
import 'package:parking_at_home/resources.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking@Home',
      theme: ThemeData(
        primarySwatch: ResColors.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}