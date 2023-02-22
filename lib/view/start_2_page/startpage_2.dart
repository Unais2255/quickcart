import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/image.dart';
import 'package:quickcart/constants/text.dart';
import 'package:quickcart/view/send_code_page/send_code.dart';
import 'package:quickcart/view/welcome_page/welcomepage.dart';

import '../signinpage/widgets/google_icon.dart';

class Startpage2 extends StatefulWidget {
  const Startpage2({super.key});

  @override
  State<Startpage2> createState() => _Startpage2State();
}

class _Startpage2State extends State<Startpage2> {
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
              padding: const EdgeInsets.only(right: 130, top: 35),
              child: Text(
                startpagetitle,
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w800, color: black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                startpagetext,
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w500, color: gray),
              ),
            ),
            Container(
              width: 300,
              child: IntlPhoneField(
                decoration: InputDecoration(
                  labelText: phonetitle,
                  labelStyle:
                      TextStyle(color: black, fontWeight: FontWeight.bold),
                  // border: OutlineInputBorder(

                  // ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                cursorColor: gray,
                decoration: InputDecoration(
                    labelText: dobtitle,
                    hintText: dobtext,
                    labelStyle:
                        TextStyle(color: black, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.date_range_outlined,
                    ),
                    prefixIconColor: gray),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    gendertitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: black,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                      height: 30,
                      width: 80,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(primary: lightWhite),
                          icon: Icon(
                            Icons.male_outlined,
                            color: gray,
                            size: 15,
                          ),
                          label: Text(
                            gendertext1,
                            style: TextStyle(color: gray, fontSize: 12),
                          ))
                      //

                      ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                    height: 30,
                    width: 100,
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: mainPink),
                        icon: Icon(
                          Icons.female_outlined,
                          color: lightWhite,
                          size: 15,
                        ),
                        label: Text(
                          gendertext2,
                          style: TextStyle(color: lightWhite, fontSize: 12),
                        ))
                    //
                    ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(TextSpan(
                        text: ticktext1,
                        style: TextStyle(color: gray, fontSize: 10),
                        children: <TextSpan>[
                          TextSpan(
                            text: ticktext2,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: red,
                            ),
                          ),
                        ]))
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 40,
                width: 180,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sendcodepage(),
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
            ),
            SizedBox(
              height: 10,
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
              height: 10,
              width: 10,
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
              height: 10,
              width: 10,
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
