import 'package:flutter/material.dart';

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
        bottom: Radius.circular(20),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20),
      );
// Rounded borders
  static BorderRadius get roundedBorder13 => BorderRadius.circular(
        13,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20,
      );
  static BorderRadius get roundedBorder28 => BorderRadius.circular(
        28,
      );
}
