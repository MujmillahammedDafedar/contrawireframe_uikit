import 'package:flutter/material.dart';
import 'package:mysocial/utils/constant/colors.dart';

class OtpFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: colorYellow,
                child: Text("hi"),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: white,
                child: Text("hello"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
