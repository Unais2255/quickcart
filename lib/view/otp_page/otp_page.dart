import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/image.dart';
import 'package:quickcart/constants/text.dart';
import 'package:quickcart/view/send_code_page/send_code.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:quickcart/view/verification_page/verification.dart';

class Otppage extends StatefulWidget {
  const Otppage({super.key});

  @override
  State<Otppage> createState() => _OtppageState();
}

class _OtppageState extends State<Otppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: CircleAvatar(
                    backgroundColor: mainPink,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const Sendcodepage())),
                      splashColor: Colors.yellowAccent,
                      splashRadius: 30,
                      highlightColor: Colors.red,
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
          
                
              ],
            ),
          Center(child: Column(
          
                  children: [
                  
                    Image(image: AssetImage(shopingCart,), height: 100,),
                  ],
                )),
                SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(right: 210,),
              child: Text(otptitle,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: black)),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text(otptext,style:TextStyle(color: gray,fontSize: 12),),
            ),
            SizedBox(height: 30,),
            PinCodeFields(
                    length: 4,
                    fieldBorderStyle: FieldBorderStyle.square,
                    responsive: false,
                    fieldHeight:35.0,
                    fieldWidth: 35.0,
                    borderWidth:1.0,
                    activeBorderColor: mainPink,
                    activeBackgroundColor: lightWhite,
                    borderRadius: BorderRadius.circular(10.0),
                    keyboardType: TextInputType.number,
                    autoHideKeyboard: false,
                    fieldBackgroundColor:lightWhite,
                    borderColor: black,
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    onComplete: (output) {
                   
                      print(output);
                    },
                  ),
                  SizedBox(height: 40,),
                  SizedBox(
                    height: 40,
                    width: 180,
                    child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Verification_page(),
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
                          ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        resendtxt,
                        style:
                            TextStyle(color: gray, fontWeight: FontWeight.w500),
                      ))
          ],
          
        ),
      ),
    );
  }
}
