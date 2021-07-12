import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mysocial/ui/shared/buttons.dart';
import 'package:mysocial/ui/shared/const_widget.dart';
import 'package:mysocial/ui/views/opt.dart';
import 'package:mysocial/utils/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    signup() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OtpFields()),
      );
    }

    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 110.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: Text(
                  'You have chance to create new account if you really want.',
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              customeText(false,
                  hintText: "Full name", icon: Icons.person_outlined),
              SizedBox(
                height: 24.h,
              ),
              customeText(false,
                  hintText: "Email addresss", icon: Icons.email_outlined),
              SizedBox(
                height: 24.h,
              ),
              customeText(false, hintText: "", icon: Icons.lock_outline),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: customButton(
                  () {
                    signup();
                  },
                  'Sign Up',
                  context,
                  height: 60.h,
                  width: 320.w,
                  radius: 16.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                  fontSize: 21.sp,
                  color: colorYellow,
                  visibleIcon: true,
                  textColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700),
                        text: "Already have account?  ",
                      ),
                      TextSpan(
                        style: TextStyle(
                            color: colorRed,
                            fontSize: 13.sp,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700),
                        text: "Go here",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            signup();
                          },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
