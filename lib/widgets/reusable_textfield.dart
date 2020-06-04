import 'package:flutter/material.dart';

InputDecoration inputDecoration({String hintText}) {
  return InputDecoration(
    hintText: '$hintText',
    hintStyle: TextStyle(color: Color(0xff979AA0)),
    fillColor: Color(0xff717478),
    contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
    // enabledBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(10)),
    //   borderSide: BorderSide(
    //     width: 1,
    //     color: Color(0xffEEEFF0),
    //   ),
    // ),
    // focusedBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(10)),
    //   borderSide: BorderSide(
    //     width: 1,
    //     color: Color(0xff63C7FA),
    //   ),
    // ),
    // focusedErrorBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(10)),
    //   borderSide: BorderSide(
    //     width: 1,
    //     color: Color(0xff63C7FA),
    //   ),
    // ),
    // errorBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(10)),
    //   borderSide: BorderSide(
    //     width: 1,
    //     color: Colors.red,
    //   ),
    // ),
  );
}
