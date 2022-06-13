// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/menu.svg")),
            CircleAvatar(backgroundImage: AssetImage("assets/images/avatar.jpg"),)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
