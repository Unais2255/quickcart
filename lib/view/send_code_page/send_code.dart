

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/image.dart';
import 'package:quickcart/constants/text.dart';
import 'package:quickcart/view/otp_page/otp_page.dart';
import 'package:quickcart/view/send_code_page/widget/elevetted_button.dart';

class Sendcodepage extends StatefulWidget {
  const Sendcodepage({super.key});

  @override
  State<Sendcodepage> createState() => _SendcodepageState();
}

class _SendcodepageState extends State<Sendcodepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
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
                padding: const EdgeInsets.only(left: 17,top: 40),
                child: Text(sendcodetitle,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: black),),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(sendcodetext,style: TextStyle(fontSize: 16,color: gray,),),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(sendcodephonetext,style: TextStyle(fontSize: 15,color: black,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  width: 330,
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      // labelText: phonetitle,
                      labelStyle:
                          TextStyle(color: black, fontWeight: FontWeight.bold),
                      
        
                     
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Center(
                child: SizedBox(
                  height: 40,
                  width: 180,
                  child: Elevatedbutton(context),
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }


}