import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_video_demo/modules/main/widgets/bottom_button.dart';
import 'package:flutter_video_demo/modules/main/widgets/bottom_subtitle.dart';
import 'package:flutter_video_demo/modules/main/widgets/play_button.dart';
import 'package:flutter_video_demo/modules/main/widgets/top_words.dart';
import 'package:flutter_video_demo/modules/main/widgets/user_avatar.dart';
import 'package:flutter_video_demo/modules/main/widgets/video_fragment.dart';
import 'package:get/get.dart';

import '../index.dart';

/// TabChild
class TabChild extends GetView<MainController> {
  const TabChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ///视频播放
          const Positioned(child: VideoFragment()),

          ///用户头像
          Positioned(
              right: 20.r, top: Get.height / 3, child: const UserAvatar()),

          ///顶部单词
          Positioned(
              width: Get.width,
              top: Get.mediaQuery.padding.top + (50.r * 1.2),
              child: const TopWords()),

          ///底部字幕
          Positioned(
              width: Get.width,
              bottom: Get.height / 2 / 2,
              child: const BottomSubtitle()),

          ///播放结束展示个按钮
          const Positioned(
              left: 0, bottom: 0, right: 0, top: 0, child: PlayButton()),

          ///底部按钮
          Positioned(
              width: Get.width, bottom: 40.r, child: const BottomButton())
        ],
      ),
    );
  }
}
