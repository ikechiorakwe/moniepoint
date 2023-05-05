import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/pages/home.dart';
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';
import 'package:moniepoint_take_home_assignment/app/widgets/clothe_screen.dart';

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
        // theme: theme,
        theme: ThemeData(
          primarySwatch: Colors.teal,
          brightness: Brightness.light,
          primaryColor: gPrimaryColor,
          bottomAppBarColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
        ),
        // home: const MyHomePage())
        home: const MyClotheDisplayScreen());
  }
}
