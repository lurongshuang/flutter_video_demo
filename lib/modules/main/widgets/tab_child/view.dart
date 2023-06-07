import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_video_demo/modules/main/bean/Captions.dart';
import 'package:flutter_video_demo/modules/main/widgets/bottom_button.dart';
import 'package:flutter_video_demo/modules/main/widgets/bottom_subtitle.dart';
import 'package:flutter_video_demo/modules/main/widgets/tab_child/widgets/play_button.dart';
import 'package:flutter_video_demo/modules/main/widgets/tab_child/widgets/video_fragment/index.dart';
import 'package:flutter_video_demo/modules/main/widgets/top_words.dart';
import 'package:flutter_video_demo/modules/main/widgets/tab_child/widgets/user_avatar.dart';
import 'package:get/get.dart';

import 'index.dart';

class TabChildPage extends StatefulWidget {
  Captions captions;

  TabChildPage(this.captions, {Key? key}) : super(key: key);

  @override
  State<TabChildPage> createState() => _TabChildPageState();
}

class _TabChildPageState extends State<TabChildPage>
    with AutomaticKeepAliveClientMixin {
  _TabChildPageState() {
    print("asdf");
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _TabChildViewGetX(widget.captions);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

class _TabChildViewGetX extends GetView<TabChildController> {
  Captions captions;

  _TabChildViewGetX(this.captions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabChildController>(
      init: TabChildController(captions),
      id: "tab_child",
      tag: "${captions.id}",
      builder: (TabChildController cl) {
        return Container(
          color: Colors.black,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ///视频播放
              Positioned(child: VideoFragmentPage(cl.captions)),

              // ///用户头像
              // Positioned(
              //     right: 20.r, top: Get.height / 3, child: const UserAvatar()),
              //
              // ///顶部单词
              // Positioned(
              //     width: Get.width,
              //     top: Get.mediaQuery.padding.top + (50.r * 1.2),
              //     child: const TopWords()),
              //
              // ///底部字幕
              // Positioned(
              //     width: Get.width,
              //     bottom: Get.height / 2 / 2,
              //     child: const BottomSubtitle()),
              //
              // ///播放结束展示个按钮
              // const Positioned(
              //     left: 0,
              //     bottom: 0,
              //     right: 0,
              //     top: 0,
              //     child: PlayButton()),

              ///底部按钮
              Positioned(
                  width: Get.width, bottom: 40.r, child: const BottomButton())
            ],
          ),
        );
      },
    );
  }
}
