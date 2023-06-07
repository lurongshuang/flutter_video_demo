import 'dart:collection';

import 'package:flutter_video_demo/modules/main/bean/Captions.dart';
import 'package:flutter_video_demo/modules/main/bean/Line.dart';
import 'package:flutter_video_demo/modules/main/bean/Video.dart';
import 'package:flutter_video_demo/modules/main/widgets/tab_child/widgets/video_fragment/state.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoFragmentController extends GetxController {
  Captions captions;

  VideoFragmentController(this.captions);

  final VideoState state = VideoState();

  ///视频控制器
  VideoPlayerController? videoPlayerController;

  ///视频局部tag
  static const String videoTag = "videoTag";

  void onTap() {}

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
    videoPlayerController?.dispose();
  }

  @override
  void onInit() {
    super.onInit();
    initData(captions);
    initVideoController();
  }

  initData(Captions captions) {
    state.video(captions.video);
    if (captions.subtitles != null && captions.subtitles?.length == 2) {
      state.subtitleEN(captions.subtitles![0]);
      state.subtitleCN(captions.subtitles![1]);
    }
    if (captions.words != null && captions.words!.isNotEmpty) {
      state.word(captions.words![0]);
    }
    state.user(captions.user);
  }

  LinkedHashMap<int, VideoPlayerController> _videoPlayInstancesMap =
      LinkedHashMap();

  VideoPlayerController getVideoPlayer(Video video) {
    VideoPlayerController? controller = _videoPlayInstancesMap[video.id];
    if (controller == null) {
      controller = getVideoController(video);
      _videoPlayInstancesMap[video.id!] = controller!;
    }
    return controller!;
  }

  ///监听播放器
  initVideoController() {
    if (state.video.value.url == null) {
      return;
    }

    videoPlayerController = getVideoPlayer(state.video.value);
    videoPlayerController!
      ..initialize().then((value) {
        update([videoTag]);
        videoAddListener();
        videoPlayerController?.play();
      });
    // VideoPlayerController.network(state.video.value.url!)
    //   ..initialize().then((_) {
    //     update([videoTag]);
    //     videoAddListener();
    //     videoPlayerController?.play();
    //   });
  }

  VideoPlayerController getVideoController(Video video) {
    return VideoPlayerController.network(video.url!);
  }

  ///添加监听
  videoAddListener() {
    videoPlayerController?.addListener(() {
      if (videoPlayerController!.value.isPlaying) {
        ///识别字幕
        //中文
        state.subtitleCNStr(getCaptionsStr(
            videoPlayerController!.value.position.inMilliseconds,
            state.subtitleCN.value.lines ?? []));
        //英文
        state.subtitleENStr(getCaptionsStr(
            videoPlayerController!.value.position.inMilliseconds,
            state.subtitleEN.value.lines ?? []));
      }

      //判断是否展示播放按钮
      if (videoPlayerController!.value.position.inMilliseconds ==
          videoPlayerController!.value.duration.inMilliseconds) {
        state.showPlayButton(true);
      } else {
        if (state.showPlayButton.value) {
          state.showPlayButton(false);
        }
      }
    });
  }

  ///获取字幕
  String getCaptionsStr(int target, List<Line> list) {
    int left = 0;
    int right = list.length - 1;
    while (left <= right) {
      int mid = left + ((right - left) >> 1);
      if (list[mid].startMilli! <= target && list[mid].endMilli! > target) {
        return list[mid].words ?? "";
      } else if (list[mid].startMilli! > target) {
        right = mid - 1;
      } else {
        left = mid + 1;
      }
    }
    return "";
  }

  @override
  void onReady() {
    super.onReady();
  }

  void buttonTap() {
    if (videoPlayerController == null) {
      return;
    }
    if (!videoPlayerController!.value.isInitialized) {
      return;
    }
    update([videoTag]);
    if (videoPlayerController!.value.isPlaying) {
      videoPlayerController?.pause();
    } else {
      videoPlayerController?.play();
    }
  }

  void changeVide(Captions captions) {
    if (state.video.value == captions.video) {
      return;
    }
    initData(captions);
    initVideoController();
  }

// @override
// void onClose() {
//   super.onClose();
// }
}
