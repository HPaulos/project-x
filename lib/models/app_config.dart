import 'package:flutter/material.dart';

class AppConfig {
  Color primaryColor;
  Color secondaryColor;
  Color primaryBgColor;
  Color secondaryBgColor;

  AppConfig(
      {this.primaryColor = Colors.white,
      this.secondaryColor = Colors.black,
      this.primaryBgColor = const Color(0xFF28A1D8)});
}
