import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_design_app/screens/home/home.dart';
import 'package:restaurant_design_app/screens/login/login.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
     SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Restaurant',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
