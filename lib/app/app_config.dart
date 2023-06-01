
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// App 常量配置
class AppConfig {
  static const String appName = 'flutter_video_demo';
  /// 屏幕尺寸
  static const double screenWidth = 750 / 2;
  static const double screenHeight = 1624 / 2;
  static Size designSize = const Size(screenWidth, screenHeight);
  /// 支持语言环境
  static List<Locale> supportedLocales = [const Locale('zh', 'CN')];

  static List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate, //一定要配置,否则iphone手机长按编辑框有白屏卡着的bug出现
  ];
}
