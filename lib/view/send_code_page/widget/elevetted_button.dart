
  import 'package:flutter/material.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/text.dart';
import 'package:quickcart/view/otp_page/otp_page.dart';

ElevatedButton Elevatedbutton(BuildContext context) {
    return ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Otppage(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        primary: mainPink,
                      ),
                      child: Text(
                        sendcode,
                        style: TextStyle(
                            color: lightWhite, fontWeight: FontWeight.bold),
                      )
                      );
  }