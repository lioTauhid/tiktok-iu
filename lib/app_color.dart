import 'package:flutter/material.dart';

const Color primaryColor = Color(0xffFFDD5E);
const Color secondaryColor = Color.fromRGBO(255, 187, 0, 0.17);
const Color accentColor = Color.fromRGBO(250, 137, 137, 1);
const Color alternate = Color.fromRGBO(76, 66, 67, 0.66);

Color textPrimary = const Color(0xff212121);
Color textSecondary = const Color(0xff757575);
Color primaryBackground = const Color(0xffFFFFFF);
Color secondaryBackground = const Color(0xff2E2E2E);

const Color red = Colors.red;
const Color white = Colors.white;
const Color black = Colors.black;

void applyThem(bool dark) {
  if (dark) {
    textPrimary = const Color(0xffFFFFFF);
    textSecondary = const Color(0xffD9D9D9);
    primaryBackground = const Color(0xff121212);
    secondaryBackground = const Color(0xff262626);
    // alternate = const Color(0xff434343);
  } else {
    textPrimary = const Color(0xff262626);
    textSecondary = const Color(0xff7B7B7B);
    primaryBackground = const Color(0xffF1F4F8);
    secondaryBackground = const Color(0xffFFFFFF);
    // alternate = const Color(0xffF5F5F5);
  }
}
