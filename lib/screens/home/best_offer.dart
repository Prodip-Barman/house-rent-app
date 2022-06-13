// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:houserentproject/model/house.dart';


import '../../widget/circle_icon_button.dart';

class BestOffer extends StatelessWidget {
  final offerList = House.generateBestOffer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Best Offer",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("See All",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold)),
          ]),
          SizedBox(
            height: 10,
          ),
          ...offerList.map((e) => Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(e.imageUrl),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              e.address,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      child: CircleIconButton("assets/icons/heart.svg",
                          Colors.grey),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
