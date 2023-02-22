 import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/image.dart';
import 'package:quickcart/constants/text.dart';

PageViewModel pageviewmodel3() {
    return PageViewModel(
          title: indro3Text,
          body: indro3Descp,
          image: Center(
            child: Image.asset(
              intro3,
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
