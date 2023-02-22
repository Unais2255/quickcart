import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/image.dart';
import 'package:quickcart/constants/text.dart';
import 'package:quickcart/view/signinpage/signinpage.dart';
import 'package:quickcart/view/signinpage/widgets/google_icon.dart';
import 'package:quickcart/view/start_2_page/startpage_2.dart';
import 'package:quickcart/view/welcome_page/welcomepage.dart';

class Startpage1 extends StatefulWidget {
  const Startpage1({super.key});

  @override
  State<Startpage1> createState() => _Startpage1State();
}

class _Startpage1State extends State<Startpage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
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
                child: TextField(
                  cursorColor: gray,
                  decoration: InputDecoration(
                      labelText: login2title,
                      hintText: login2text,
                      labelStyle:
                          TextStyle(color: black, fontWeight: FontWeight.bold),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                      ),
                      prefixIconColor: gray),
                ),),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: TextField(
                  cursorColor: gray,
                  decoration: InputDecoration(
                      labelText:lognametitle ,
                      hintText: lognametext,
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
              SizedBox(height: 20,width: 20,),
              Column(
               
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text.rich(TextSpan(
                      text: ticktext1,
                      style: TextStyle(color: gray,fontSize:10),
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
                              builder: (context) => Startpage2(),
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
      ),
    );
  }
}
