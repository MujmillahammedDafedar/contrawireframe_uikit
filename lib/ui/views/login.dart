import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mysocial/ui/shared/buttons.dart';
import 'package:mysocial/ui/shared/const_widget.dart';
import 'package:mysocial/utils/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  signin() {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60.h),
                width: 120.h,
                height: 120.h,
                child: SvgPicture.asset('assets/svg/logo.svg'),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Login',
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 24.h,
              ),
              customeText(false,
                  hintText: "Email addresss", icon: Icons.person),
              SizedBox(
                height: 38.h,
              ),
              customeText(true, hintText: "", icon: Icons.lock),
              SizedBox(
                height: 48.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: customButton(
                  () {
                    signin();
                  },
                  'Sign in',
                  context,
                  height: 60.h,
                  width: 320.w,
                  radius: 16.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                  fontSize: 21.sp,
                  color: Colors.black,
                  visibleIcon: true,
                  buttonIcon: Icons.arrow_forward_ios,
                  iconColor: white,
                  textColor: white,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700),
                      text: "You are new? ",
                    ),
                    TextSpan(
                      style: TextStyle(
                          color: colorRed,
                          fontSize: 13.sp,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700),
                      text: "Create new",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Woooh worked !!");
                        },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
