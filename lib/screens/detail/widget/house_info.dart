// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              MenuItem(
                  imageUrl: 'assets/icons/bedroom.svg',
                  content: '5 Bedroom\n3 Master Bedroom'),
              MenuItem(
                  imageUrl: 'assets/icons/bathroom.svg',
                  content: '5 Bathroom\n3 Toilet')
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              MenuItem(
                  imageUrl: 'assets/icons/kitchen.svg',
                  content: '2 Kitchen\n120 sqft'),
              MenuItem(
                  imageUrl: 'assets/icons/parking.svg',
                  content: '2 Parking\n120 sqft'),
            ],
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  String imageUrl;
  String content;

  MenuItem({required this.imageUrl, required this.content, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl),
            SizedBox(
              width: 20,
            ),
            Text(
              content,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
