  import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/image.dart';
import 'package:quickcart/constants/text.dart';

PageViewModel pageviewmodel2() {
    return PageViewModel(
          title: indro2Text,
          body: indro2Descp,
          image: Center(
            child: Image.asset(
              intro2,
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                color: mainPink, fontWeight: FontWeight.bold, fontSize: 25),
            bodyTextStyle: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
                color: Colors.grey),
          ),
        );
  }