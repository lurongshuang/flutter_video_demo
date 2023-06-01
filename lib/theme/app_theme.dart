import 'package:flutter/material.dart';
import 'package:flutter_video_demo/constants/app_colors.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: TCS.blue00b6,
  colorScheme: ColorScheme.fromSwatch(accentColor: TCS.blue00b6),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  scrollbarTheme: ScrollbarThemeData(
    interactive: true,
    thumbVisibility: MaterialStateProperty.all(true),
    radius: const Radius.circular(10.0),
    thickness: MaterialStateProperty.all(4.0),
    minThumbLength: 100,
    thumbColor: MaterialStateProperty.all(TCS.gray999),
  ),
);
