import 'package:flutter/material.dart';
import 'package:mysocial/utils/constant/colors.dart';

Widget customButton(VoidCallback onPress, String text, BuildContext context,
    {double? radius,
    double fontSize = 30,
    FontWeight fontWeight = FontWeight.w600,
    bool small = false,
    double? padding,
    Color color = Colors.black12,
    double? height,
    double? width,
    String? fontFamily,
    Color? iconColor,
    bool? visibleIcon,
    IconData? buttonIcon,
    Color textColor = Colors.white}) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: small ? 0 : padding ?? 10),
      child: MaterialButton(
        color: color,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.black, width: 3, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(radius ?? 24)),
        onPressed: onPress,
        child: Container(
          height: height ?? 60,
          alignment: Alignment.center,
          width: width ?? 157,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    fontFamily: fontFamily),
                textAlign: TextAlign.center,
              ),
              if (visibleIcon == true)
                SizedBox(
                  width: 8.0,
                ),
              if (visibleIcon == true)
                Icon(
                  buttonIcon,
                  color: iconColor,
                  size: 18.0,
                )
            ],
          ),
        ),
      ));
}
