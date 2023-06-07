import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_video_demo/constants/app_colors.dart';
import 'package:flutter_video_demo/constants/text_utils/text_utils.dart';
import 'package:flutter_video_demo/modules/main/widgets/tab_child/widgets/video_fragment/controller.dart';
import 'package:get/get.dart';

// Created by卢融霜
// on 2023/6/1
// Description：播放按钮
class PlayButton extends GetView<VideoFragmentController> {

  const PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        tag: tag,
        builder: (cl) {
          return Center(
            child: Obx(() =>
            controller.state.showPlayButton.value
                ? InkWell(
              onTap: () {
                controller.buttonTap();
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: TCS.blueTransparent00b63,
                      borderRadius: BorderRadius.circular(50.r)),
                  width: 100.r,
                  height: 100.r,
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: TU.fontSize_50,
                    color: TCS.gray666,
                  )),
            )
                : const SizedBox()),
          );
        });
  }
}
