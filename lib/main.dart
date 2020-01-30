import 'package:flutter/material.dart';
import 'package:freshwater_compat_flutter/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}
