// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIconButton extends StatelessWidget {
  String iconUrl;
  Color color;

  CircleIconButton(this.iconUrl, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: SvgPicture.asset(iconUrl)
    );
  }
}
