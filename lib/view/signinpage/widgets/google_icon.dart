import 'package:flutter/material.dart';
import 'package:quickcart/constants/colors.dart';
import 'package:quickcart/constants/image.dart';

class Googleicon extends StatelessWidget {
  const Googleicon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
        
      
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image: AssetImage(facebook)
                ),
                color: linkblue),
      ),
    );
  }
}
