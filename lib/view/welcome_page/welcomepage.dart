import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/image.dart';
import 'package:quickcart/constants/text.dart';
import 'package:quickcart/view/signinpage/signinpage.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 500,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(welcome),
            )),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: SizedBox(
                height: 40,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signinpage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: mainPink,
                    ),
                    child: Text(
                      welcome2,
                      style: TextStyle(
                          color: lightWhite, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
