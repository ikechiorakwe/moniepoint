import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/pages/home.dart';
import 'package:moniepoint_take_home_assignment/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: const MyHomePage());
  }
}
