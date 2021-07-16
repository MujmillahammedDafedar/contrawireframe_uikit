import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mysocial/ui/shared/buttons.dart';
import 'package:mysocial/ui/views/bottomBar.dart';
import 'package:mysocial/utils/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    signup() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Main()),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.only(top: 36.0),
                width: MediaQuery.of(context).size.width,
                color: colorYellow,
                child: Column(
                  children: [
                    Text(
                      "One timepass",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 27.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SvgPicture.asset("assets/svg/pep_09.svg")
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 39.0, right: 39, top: 60.0),
                      child: PinCodeTextField(
                        length: 4,
                        obscureText: false,
                        cursorColor: Colors.black,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(16),
                          fieldHeight: 56.h,
                          fieldWidth: 56.w,
                          selectedColor: Colors.black,
                          activeColor: Colors.black,
                          selectedFillColor: Colors.black,
                          disabledColor: Colors.black,
                          inactiveColor: Colors.black,
                          activeFillColor: Colors.black,
                          inactiveFillColor: Colors.black,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        onCompleted: (v) {
                          print("Completed");
                        },
                        onChanged: (value) {
                          print(value);
                          // setState(() {
                          //   currentText = value;
                          // });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                        appContext: context,
                      ),
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
                            text: "Didn\'t get fav number? ",
                          ),
                          TextSpan(
                            style: TextStyle(
                                color: colorRed,
                                fontSize: 13.sp,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700),
                            text: "Get new",
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: customButton(
                        () {
                          signup();
                        },
                        'Verify',
                        context,
                        height: 60.h,
                        width: 320.w,
                        radius: 16.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w800,
                        fontSize: 21.sp,
                        color: Colors.black,
                        visibleIcon: true,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
