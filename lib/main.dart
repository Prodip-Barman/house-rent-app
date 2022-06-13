// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'House Rent App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Color(0xffF5F6F6),
          primaryColor: Color(0xff811883),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Color(0xffFA5019)),
        textTheme: TextTheme(
          headline1: TextStyle(color: Color(0xff100E34)),
          bodyText1: TextStyle(color: Color(0xff100E34).withOpacity(0.5))
        ),
      ),
      home: HomeScreen(),
    );
  }
}
