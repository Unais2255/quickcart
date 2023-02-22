// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/image.dart';
import 'package:quickcart/constants/text.dart';
import 'package:quickcart/view/start_1_page/startpage_1.dart';
import 'package:quickcart/view/signinpage/widgets/google_icon.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Image(image: AssetImage(shopingCart), height: 60),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160, top: 35),
              child: Text(
                signin,
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w800, color: black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 115),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w500, color: gray),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: TextField(
                cursorColor: gray,
                decoration: InputDecoration(
                    labelText: logintitle,
                    hintText: logintext,
                    labelStyle:
                        TextStyle(color: black, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                    ),
                    prefixIconColor: gray),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: TextField(
                cursorColor: gray,
                decoration: InputDecoration(
                    labelText: passtitle,
                    hintText: passwordtext,
                    labelStyle:
                        TextStyle(color: black, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.lock_clock_outlined,
                    ),
                    prefixIconColor: gray),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        forgetpas,
                        style:
                            TextStyle(color: gray, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 40,
              width: 180,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Startpage1(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: mainPink,
                  ),
                  child: Text(
                    Login,
                    style: TextStyle(
                        color: lightWhite, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    indent: 80.0,
                    endIndent: 20.0,
                    thickness: 1.5,
                  ),
                ),
                Text(
                  dvdrtext,
                  style: TextStyle(color: black, fontWeight: FontWeight.w500),
                ),
                Expanded(
                  child: Divider(
                    indent: 20.0,
                    endIndent: 80.0,
                    thickness: 1.5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Googleicon(),
              InkWell(
                onTap: (() {}),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(google)),
                    color: lightWhite,
                  ),
                ),
              ),
              InkWell(
                onTap: (() {}),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(linkedin)),
                      color: linkblue),
                ),
              ),
              InkWell(
                onTap: (() {}),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(twitter)),
                      color: lightWhite),
                ),
              ),
            ]),
            SizedBox(
              height: 30,
              width: 30,
            ),
            Text.rich(TextSpan(
                text: signuptext1,
                style: TextStyle(color: gray),
                children: <TextSpan>[
                  TextSpan(
                    text: signuptext2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: red,
                    ),
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}
