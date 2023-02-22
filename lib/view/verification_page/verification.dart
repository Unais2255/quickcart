import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/text.dart';
import 'package:lottie/lottie.dart';
import 'package:quickcart/view/home_page/homepage.dart';

class Verification_page extends StatefulWidget {
  const Verification_page({super.key});

  @override
  State<Verification_page> createState() => _Verification_pageState();
}

class _Verification_pageState extends State<Verification_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
           Padding(
             padding: const EdgeInsets.only(top: 100),
             child: Text(Verifytitle,style:TextStyle(color: black,fontWeight: FontWeight.bold,fontSize: 20),),
           ),
           
             

            ],
          ),
          Container(
            height: 400,
            width: 150,
            child: Lottie.asset(
              
                 'assets/86085-sucess.json',
               repeat: true,
               reverse: true,
               animate: true,
             ),
          ),
          SizedBox(
            height: 40,
            width: 180,
            child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Homepage(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              primary: mainPink,
                            ),
                            child: Text(
                             Continuetxt ,
                              style: TextStyle(
                                  color: lightWhite, fontWeight: FontWeight.bold),
                            )
                            ),
          ),
        ],
      ),
    );
  }
}