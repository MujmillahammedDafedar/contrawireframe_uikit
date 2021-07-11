import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mysocial/ui/shared/buttons.dart';
import 'package:mysocial/utils/constant/colors.dart';
import 'package:mysocial/utils/constant/route_path.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'next_slider.dart';

class OnBoardingScreen extends StatelessWidget {
  skip() {
    print('Skip');
    // Navigator.pushNamed(context, RoutePaths.Slider);
  }

  @override
  Widget build(BuildContext context) {
    next() async {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnBoarding()));
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Stack(
          children: [
            // top: MediaQuery.of(context).size.width * 0.87,
            // left: MediaQuery.of(context).size.width * 0.02,
            // width: MediaQuery.of(context).size.width / 3,

            Positioned(
              top: MediaQuery.of(context).size.width * 0.1,
              left: MediaQuery.of(context).size.width * 0.1,
              child: SvgPicture.asset('assets/svg/onboarding.svg'),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.02,
              top: MediaQuery.of(context).size.width * 0.90,
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
              top: MediaQuery.of(context).size.width * 1.11,
              left: MediaQuery.of(context).size.width * 0.02,
              child: Text(
                'Wireframe is still important\n for ideation.It will help you to\n quickly test idea.',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customButton(() {
                    skip();
                  }, 'Skip', context,
                      height: 60.h,
                      width: 130.w,
                      radius: 24.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                      fontSize: 21.sp,
                      color: white,
                      textColor: Colors.black),
                  customButton(() {
                    next();
                  }, 'Next', context,
                      height: 60.h,
                      width: 147.w,
                      radius: 24.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                      fontSize: 21.sp,
                      color: Colors.black,
                      textColor: white)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
