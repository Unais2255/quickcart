import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/image.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quickcart/constants/text.dart';
import 'package:quickcart/view/indroduction_page/widget/pageviewmodel2.dart';
import 'package:quickcart/view/indroduction_page/widget/pageviewmodel_1.dart';
import 'package:quickcart/view/indroduction_page/widget/pageviewmodel_3.dart';
import 'package:quickcart/view/welcome_page/welcomepage.dart';


class Introductionpage extends StatefulWidget {
  const Introductionpage({super.key});

  @override
  State<Introductionpage> createState() => _IntroductionpageState();
}

class _IntroductionpageState extends State<Introductionpage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: lightWhite,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          pageviewmodel1(),
          pageviewmodel2(),
          pageviewmodel3(),
        ],
        onDone: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Welcomepage(),
              ));
        },
        onSkip: () {},
        showSkipButton: true,

        skip: Text(
          "skip",
          style: TextStyle(
              fontWeight: FontWeight.w100, fontSize: 15, color: Colors.grey),
        ),
        next: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: mainPink,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: black, blurRadius: 3.0)]),
          child: Icon(
            Icons.arrow_forward_rounded,
            color: lightWhite,
          ),
        ),
        done: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: mainPink,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: black,
                )
              ]),
          child: Icon(
            Icons.arrow_forward_rounded,
            color: lightWhite,
          ),
        ),
       
      ),
    );

   
  }

 

 
}
