import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mysocial/ui/shared/buttons.dart';
import 'package:mysocial/ui/views/login.dart';
import 'package:mysocial/utils/constant/colors.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  getStarted() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.width * 0.14,
            left: MediaQuery.of(context).size.width * 0.1,
            child: SvgPicture.asset('assets/svg/orange_circle.svg'),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.15,
            top: MediaQuery.of(context).size.width * 0.2,
            child: SvgPicture.asset('assets/svg/pep_sit.svg'),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.width * 1.01,
            child: Container(
              child: Text(
                'Contra\nwireframe kit',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.width * 1.22,
            child: Text(
              'Wireframe is still important\n for ideation.It will help you to\n quickly test idea.',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.width * 1.43,
            child: customButton(() {
              getStarted();
            }, 'Get started', context,
                height: 60.h,
                width: 220.w,
                radius: 24.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w800,
                fontSize: 21.sp,
                color: Colors.black,
                visibleIcon: true,
                buttonIcon: Icons.arrow_forward_ios,
                iconColor: white,
                textColor: white),
          ),
        ],
      )),
    );
  }
}
