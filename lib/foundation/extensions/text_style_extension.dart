import 'package:flutter/material.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';

extension CustomTextStyle on TextStyle {
  // Font Family
  TextStyle get fontFamily => copyWith(fontFamily: "Roboto");

  // Font Weight
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  // Font Size
  TextStyle get s8 => copyWith(fontSize: 8);
  TextStyle get s9 => copyWith(fontSize: 9);
  TextStyle get s10 => copyWith(fontSize: 10);
  TextStyle get s11 => copyWith(fontSize: 11);
  TextStyle get s12 => copyWith(fontSize: 12);
  TextStyle get s13 => copyWith(fontSize: 13);
  TextStyle get s14 => copyWith(fontSize: 14);
  TextStyle get s15 => copyWith(fontSize: 15);
  TextStyle get s16 => copyWith(fontSize: 16);
  TextStyle get s17 => copyWith(fontSize: 17);
  TextStyle get s18 => copyWith(fontSize: 18);
  TextStyle get s19 => copyWith(fontSize: 19);
  TextStyle get s20 => copyWith(fontSize: 20);
  TextStyle get s21 => copyWith(fontSize: 21);
  TextStyle get s22 => copyWith(fontSize: 22);
  TextStyle get s23 => copyWith(fontSize: 23);
  TextStyle get s24 => copyWith(fontSize: 24);
  TextStyle get s25 => copyWith(fontSize: 25);
  TextStyle get s26 => copyWith(fontSize: 26);
  TextStyle get s27 => copyWith(fontSize: 27);
  TextStyle get s28 => copyWith(fontSize: 28);
  TextStyle get s29 => copyWith(fontSize: 29);
  TextStyle get s30 => copyWith(fontSize: 30);
  TextStyle get s32 => copyWith(fontSize: 32);
  TextStyle get s35 => copyWith(fontSize: 35);
  TextStyle get s40 => copyWith(fontSize: 40);
  TextStyle get s42 => copyWith(fontSize: 42);

  // Font Color
  TextStyle get primary => copyWith(color: AppColor.primary);
  TextStyle get secondary => copyWith(color: AppColor.secondary);
  TextStyle get black => copyWith(color: AppColor.black);
  TextStyle get dateTextColor => copyWith(color: AppColor.dateTextColor);
  TextStyle get desc => copyWith(color: AppColor.descriptionColor);
  TextStyle get timeTextColor => copyWith(color: AppColor.timeTextColor);

  // Text Underline
  TextStyle get underline => copyWith(
        decoration: TextDecoration.underline,
        decorationColor: AppColor.primary,
      );

  // Text Height
  TextStyle get dense => copyWith(height: 0.7);

  // Text Letter Spacing
  TextStyle get letterSpacing => copyWith(letterSpacing: 1.4);
}
