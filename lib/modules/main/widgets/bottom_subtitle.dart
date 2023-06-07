import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_video_demo/constants/space/space.dart';
import 'package:flutter_video_demo/constants/text_utils/text_utils.dart';
import 'package:flutter_video_demo/modules/main/widgets/tab_child/controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

// Created by卢融霜
// on 2023/6/1
// Description：底部字幕
class BottomSubtitle extends GetView<TabChildController> {
  const BottomSubtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text.rich(
              TextSpan(
                  children: getTextList(controller.state.subtitleENStr.value)),
              textAlign: TextAlign.center)),
          SU.t(
              t: 10.r,
              child: Obx(() => TU.text(controller.state.subtitleCNStr.value,
                  textAlign: TextAlign.center,
                  fs: TU.fontSize_15,
                  color: Colors.white))),
        ],
      ),
    );
  }

  //将字符串转换为 InlineSpan
  List<InlineSpan> getTextList(String val) {
    if (val.isEmpty) {
      return [];
    }
    List<WidgetSpan> list = [];
    List<String> words = val.split(" ");
    for (String word in words) {
      if (word == controller.state.word.value.wordsStr) {
        list.add(WidgetSpan(
            child:
                SU.r(r: 5.r, child: TU.colourText(word, fs: TU.fontSize_18))));
      } else {
        list.add(WidgetSpan(child: SU.r(r: 5.r, child: TU.w15(word))));
      }
    }
    return list;
  }
}
