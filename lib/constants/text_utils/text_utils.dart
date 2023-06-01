import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

/// 常用文本封装 设置有默认值 TextUtils
/// Text
/// 字号
/// 标题
/// 标签

class TU {
  ///字体大小
  static final double fontSize_10 = 10.sp;
  static final double fontSize_12 = 12.sp;
  static final double fontSize_15 = 15.sp;
  static final double fontSize_18 = 18.sp;
  static final double fontSize_24 = 24.sp;
  static final double fontSize_30 = 30.sp;
  static final double fontSize_50 = 50.sp;

  /// 默认黑色10
  static d10(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    double? height,
    bool bold = false,
    TextDecoration? decoration,
  }) =>
      text(t,
          fs: fontSize_10,
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          height: height,
          decoration: decoration);

  /// 默认黑色12
  static d12(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_12,
        color: color ?? TCS.black333,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认黑色15
  static d15(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          TextBaseline? textBaseline,
          TextAlign? textAlign}) =>
      text(
        t,
        fs: fontSize_15,
        color: color ?? TCS.black333,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
        textAlign: textAlign,
        textBaseline: textBaseline,
      );

  /// 默认黑色18
  static d18(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_18,
        color: color ?? TCS.black333,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认黑色24
  static d24(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
    TextBaseline? textBaseline,
    TextAlign? textAlign,
  }) =>
      text(
        t,
        fs: fontSize_24,
        color: color ?? TCS.black333,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
        textBaseline: textBaseline,
        textAlign: textAlign,
      );

  /// 默认黑色30
  static d30(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_30,
        color: color ?? TCS.black333,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认白色10
  static w10(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_10,
        color: color ?? Colors.white,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认白色12
  static w12(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_12,
        color: color ?? Colors.white,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认白色15
  static w15(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_15,
        color: color ?? Colors.white,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认白色18
  static w18(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_18,
        color: color ?? Colors.white,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认白色24
  static w24(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_24,
        color: color ?? Colors.white,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认白色30
  static w30(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_30,
        color: color ?? Colors.white,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认灰色10
  static gray10(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false}) =>
      text(
        t,
        fs: fontSize_10,
        color: color ?? TCS.gray666,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认灰色12
  static gray12(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_12,
        color: color ?? TCS.gray666,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认灰色15
  static gray15(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_15,
        color: color ?? TCS.gray666,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认灰色18
  static gray18(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_18,
        color: color ?? TCS.gray666,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  /// 默认灰色24
  static gray24(
    String t, {
    Color? color,
    int? ml,
    TextOverflow? of,
    FontWeight? fw,
    bool bold = false,
  }) =>
      text(
        t,
        fs: fontSize_24,
        color: color ?? TCS.gray666,
        maxLines: ml,
        overflow: of,
        fw: fw,
        bold: bold,
      );

  ///带有颜色的文字
  static colourText(String text, {double? fs}) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [TCS.blue824f, TCS.blueA77e, TCS.blueA77e, TCS.blue824f],
            stops: [0.2, 0.5, 0.5, 0.8]).createShader(rect);
      },
      child: Text(
        text,
        style: TextStyle(fontSize: fs ?? fontSize_15, color: Colors.white),
      ),
    );
  }

  static text(String text,
          {Color? color = TCS.black333,
          FontWeight? fw,
          bool bold = false,
          double? fs,
          TextStyle? style,
          TextBaseline? textBaseline,
          Function? onClick,
          int? maxLines,
          TextOverflow? overflow,
          double? height,
          TextDecoration? decoration,
          Color? decorationColor,
          TextAlign? textAlign}) =>
      Text(
        text.trimLeft().trimRight(),
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: style ??
            TextStyle(
              height: height,
              fontWeight: bold ? FontWeight.w700 : fw,
              fontSize: fs ?? fontSize_15,
              color: color,
              textBaseline: textBaseline,
              decoration: decoration,
              decorationColor: decorationColor ?? color,
            ),
      );

  /// 封装Text
  /// callback 回掉
  /// icon 内容
  /// type 0默认文本 1图在左侧  2图在右侧
  /// spacing 图文之间空白距离
  static textWidget(
    String t, {
    Color color = TCS.black333,
    FontWeight? fw,
    double? fs,
    TextStyle? style,
    TextBaseline? textBaseline,
    Function? onClick,
    Widget? widget,
    int type = 0,
    double spacing = 0,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    if (type != 0) assert(widget != null, 'type == 1 widget必穿参数');

    // 构建Text
    Text isText = text(t,
        maxLines: maxLines,
        overflow: overflow,
        textBaseline: TextBaseline.alphabetic,
        style: style,
        color: color,
        fs: fs ?? fontSize_15);

    // 构建List
    List<Widget> isRowList = [isText];
    if (type == 1) {
      isRowList.insertAll(
          0, [widget ?? const SizedBox.shrink(), SizedBox(width: spacing)]);
    } else if (type == 2) {
      isRowList.addAll(
          [SizedBox(width: spacing), widget ?? const SizedBox.shrink()]);
    }

    return Row(mainAxisSize: MainAxisSize.min, children: isRowList);
  }
}
