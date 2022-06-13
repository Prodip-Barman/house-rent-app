// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:houserentproject/model/house.dart';
import 'package:houserentproject/screens/detail/details.dart';
import 'package:houserentproject/widget/circle_icon_button.dart';


class Recommended extends StatelessWidget {
  final recommendedList = House.generateRecommended();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 350,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details(recommendedList[index])));
            },
            child: Container(
                  height: 230,
                  width: 230,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(recommendedList[index].imageUrl),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Positioned(
                        top: 15,
                        right: 15,
                        child: CircleIconButton("assets/icons/mark.svg",
                            Theme.of(context).colorScheme.secondary)),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          color: Colors.white24,
                          padding: EdgeInsets.all(6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    recommendedList[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(recommendedList[index].address,
                                    style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 12, fontWeight: FontWeight.bold),)
                                ],
                              ),
                              CircleIconButton("assets/icons/mark.svg",
                                  Theme.of(context).colorScheme.secondary)
                            ],
                          ),
                        ))
                  ]),
                ),
          ),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: recommendedList.length),
    );
  }
}
