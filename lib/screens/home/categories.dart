// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoryList = [
    "Top Recommended",
    "Near You",
    "Agency Recommended",
    "Most Popular"
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              setState(() {
                currentIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: currentIndex == index ?
                            Theme.of(context).primaryColor : Colors.transparent,
                        width: 3,
                      ),
                    )
                  ),
                  child: Text(
                    categoryList[index],
                    style: TextStyle(
                      color: currentIndex == index
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).textTheme.bodyText1!.color,
                      fontSize: currentIndex == index ? 16 : 14,
                      fontWeight: currentIndex == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
          ),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: categoryList.length),
    );
  }
}
