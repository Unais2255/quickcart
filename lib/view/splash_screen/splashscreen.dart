
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quickcart/constants/image.dart';

import 'package:lottie/lottie.dart';
import 'package:quickcart/view/indroduction_page/introductionpage.dart';



import '../../../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Introductionpage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      color: mainPink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: height / 10)),
          Image(
            image: AssetImage(shopingCart),
            height: height / 8,
          ),
          Text('QUIQ CART',
              style: TextStyle(
                  fontSize: height /500, fontWeight: FontWeight.w900,color: lightWhite)),
        ],
      ),
    ));
  }
}

// whereToGo() {
//   Get.offAll(OnBoardingScreen());
// }