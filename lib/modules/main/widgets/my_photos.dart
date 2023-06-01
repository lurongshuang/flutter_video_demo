import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_video_demo/constants/app_colors.dart';

// Created by卢融霜
// on 2023/6/1
// Description：
class MyPhotos extends StatelessWidget {
  const MyPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.r,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 10.r),
        child: Container(
          width: 35.r,
          height: 35.r,
          decoration: BoxDecoration(
              color: TCS.gray999,
              border: Border.all(color: TCS.gray666, width: 2.r),
              borderRadius: BorderRadius.circular(30.r)),
        ));
  }
}
