// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../model/house.dart';

class ContentInfo extends StatelessWidget {
  final House house;

  ContentInfo(this.house);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            house.name,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5,),
          Text(
            house.address,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 14),
          ),
          SizedBox(height: 15,),
          Text(
            "50000 sqft",
            style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: 14),
          ),
          SizedBox(height: 5,),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: '\$4455 ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
              TextSpan(
                text: 'Per Month',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 14),
              )
            ]),
          )
        ],
      ),
    );
  }
}
