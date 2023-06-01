import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_video_demo/constants/app_colors.dart';
import 'package:flutter_video_demo/modules/main/controller.dart';
import 'package:get/get.dart';

// Created by卢融霜
// on 2023/6/1
// Description：视频用户头像
class UserAvatar extends GetView<MainController> {
  const UserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.r,
      height: 50.r,
      decoration: BoxDecoration(
          color: TCS.gray666,
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(color: Colors.white, width: 2.r)),
      child: ClipOval(
          child: Obx(() => controller.state.user.value.smallAvatar != null
              ? Image.network(controller.state.user.value.smallAvatar ?? "")
              : const SizedBox())),
    );
  }
}
