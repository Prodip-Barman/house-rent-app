// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:houserentproject/model/house.dart';

class DetailsAppBar extends StatelessWidget {
  final House house;

  DetailsAppBar(this.house);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            house.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    padding: EdgeInsets.all(5),
                    decoration:
                        BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                    child: SvgPicture.asset("assets/icons/arrow.svg"),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  padding: EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                  child: SvgPicture.asset("assets/icons/mark.svg"),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
