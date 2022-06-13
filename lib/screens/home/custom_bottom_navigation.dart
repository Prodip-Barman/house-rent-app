// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigation extends StatelessWidget {

  final bottomBarItem = [
    "home",
    "search",
    "notification",
    "chat",
    "home_mark"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: bottomBarItem.map((e) =>
                SvgPicture.asset("assets/icons/$e.svg", color: Theme
                    .of(context)
                    .primaryColor)).toList(),
        )
    );
  }
}
