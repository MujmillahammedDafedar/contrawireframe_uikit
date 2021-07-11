import 'package:flutter/material.dart';

Widget customeText(bool obsecure, {IconData? icon, String? hintText}) {
  return Padding(
    padding: const EdgeInsets.only(left: 24.0, right: 24),
    child: Container(
      child: TextFormField(
        obscureText: obsecure,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(15.0),
            borderSide: BorderSide(width: 2, color: Colors.black),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(15.0),
            borderSide: BorderSide(width: 2, color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(15.0),
            borderSide: BorderSide(width: 2, color: Colors.black),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 21.0,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrat'),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    ),
  );
}
