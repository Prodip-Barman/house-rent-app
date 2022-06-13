// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Saif",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8,),
            Text(
              "Find your sweet home",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
