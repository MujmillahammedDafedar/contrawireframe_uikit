import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/scheduler.dart';
import 'package:mysocial/ui/views/onboardingScreen.dart';
import 'package:mysocial/utils/constant/colors.dart';
import 'package:mysocial/utils/constant/route_path.dart';

import 'next_slider.dart';

const SPLASH_DURATION = 2;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    pushNextScreen();
    // TODO: implement initState
    super.initState();
  }
 pushNextScreen() async {
   await Future.delayed(const Duration(seconds: 5), (){
     Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => OnBoardingScreen()
         ) );

   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // RaisedButton(onPressed: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => OnBoarding()
          //   ) );
          // }),
          Positioned(
            left: 112,
            bottom: 351,
            child: Image.asset('assets/png/logo.png'),
          ),
          Positioned(
            left: 149.0,
            bottom: 109.0,
            child: Text(
              'crafted by',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 15.0, color: white),
            ),
          ),
          Positioned(
            left: 145.0,
            right: 141.7,
            bottom: 85.0,
            child: Text(
              'REALVJY',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
