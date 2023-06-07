import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_video_demo/constants/space/space.dart';
import 'package:flutter_video_demo/constants/text_utils/text_utils.dart';
import 'package:flutter_video_demo/modules/main/widgets/tab_child/controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

// Created by卢融霜
// on 2023/6/1
// Description：顶部关键字
class TopWords extends GetView<TabChildController> {
  const TopWords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TU.colourText(controller.state.word.value.wordsStr ?? "",
                  fs: TU.fontSize_30),
              SU.t(
                  t: 10.r,
                  child: TU.w15(
                      controller.state.word.value.shortChineseExplain ?? ""))
            ],
          )),
    );
  }
}
