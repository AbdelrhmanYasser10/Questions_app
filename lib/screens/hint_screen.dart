import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:questionaire_app/shared/colors/app_colors.dart';

class HintScreen extends StatelessWidget {
  const HintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight,
              color: Colors.white,
            ),
            Positioned(
              top: 0,
              child: Container(
                height: screenHeight * 0.35,
                width: screenWidth  ,
                decoration: const BoxDecoration(
                  color: AppColors.appBarColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(2500),
                      bottomLeft: Radius.circular(2500),
                  )
                ),
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
