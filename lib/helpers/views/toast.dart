import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showErrorMessage(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    backgroundColor: Color(0xFF30879B),
    textColor: Colors.white,
  );
}