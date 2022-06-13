// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:houserentproject/screens/detail/widget/about.dart';
import 'package:houserentproject/screens/detail/widget/content_info.dart';
import 'package:houserentproject/screens/detail/widget/house_info.dart';


import '../../model/house.dart';
import 'widget/details_app_bar.dart';

class Details extends StatelessWidget {
  final House house;

  Details(this.house);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsAppBar(house),
            SizedBox(
              height: 20,
            ),
            ContentInfo(house),
            SizedBox(
              height: 20,
            ),
            HouseInfo(),
            SizedBox(
              height: 20,
            ),
            About(),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      primary: Theme.of(context).primaryColor,
                    ),
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('Book Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)))))
          ],
        ),
      ),
    );
  }
}
