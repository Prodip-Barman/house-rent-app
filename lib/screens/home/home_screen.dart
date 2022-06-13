// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:houserentproject/screens/home/best_offer.dart';
import 'package:houserentproject/screens/home/categories.dart';
import 'package:houserentproject/screens/home/custom_bottom_navigation.dart';
import 'package:houserentproject/screens/home/recommended.dart';
import 'package:houserentproject/screens/home/search_input.dart';
import 'package:houserentproject/screens/home/welcome_text.dart';

import 'custom_app_bar.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            Categories(),
            Recommended(),
            BestOffer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
