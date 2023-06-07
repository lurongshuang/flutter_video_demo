import 'package:flutter/material.dart';
import 'package:flutter_video_demo/modules/main/bean/Captions.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import 'index.dart';

class VideoFragmentPage extends StatefulWidget {
  Captions captions;

  VideoFragmentPage(this.captions, {Key? key}) : super(key: key);

  @override
  State<VideoFragmentPage> createState() => _VideoFragmentPageState();
}

class _VideoFragmentPageState extends State<VideoFragmentPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _VideoFragmentViewGetX(widget.captions);
  }
}

class _VideoFragmentViewGetX extends GetView<VideoFragmentController> {
  Captions captions;

  _VideoFragmentViewGetX(this.captions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.put(VideoFragmentController(captions), tag: "${captions.video!.id}");
    return GetBuilder<VideoFragmentController>(
      init: VideoFragmentController(captions),
      tag: "${captions.video!.id}",
      id: VideoFragmentController.videoTag,
      builder: (VideoFragmentController cl) {
        return Container(
          alignment: Alignment.center,
          child: cl.videoPlayerController != null &&
              cl.videoPlayerController!.value.isInitialized
              ? AspectRatio(
                  aspectRatio:
                  cl.videoPlayerController!.value.aspectRatio,
                  child: VideoPlayer(cl.videoPlayerController!),
                )
              : const CircularProgressIndicator(),
        );
      },
    );
  }
}
