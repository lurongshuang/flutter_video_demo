import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_video_demo/modules/main/bean/Captions.dart';
import 'package:flutter_video_demo/modules/main/bean/Line.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import 'index.dart';

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MainController();

  final MainState state = MainState();

  ///tab选项卡名称
  final List<String> tabTitleList = ["首页", "词汇"];

  ///视频控制器
  VideoPlayerController? videoPlayerController;

  ///视频局部tag
  static const String videoTag = "videoTag";

  late Captions captions;

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    //初始化数据
    initData();
  }

  ///初始化数据
  initData() async {
    //从json文件中获取数据
    String jsonString =
        await rootBundle.loadString('assets/json/wordflows.json');
    Map<String, dynamic> map = jsonDecode(jsonString);
    captions = Captions.fromJson(map);

    ///将数据存储到 state
    state.video(captions.video);
    if (captions.subtitles != null && captions.subtitles?.length == 2) {
      state.subtitleEN(captions.subtitles![0]);
      state.subtitleCN(captions.subtitles![1]);
    }
    if (captions.words != null && captions.words!.isNotEmpty) {
      state.word(captions.words![0]);
    }
    state.user(captions.user);
    //监听初始化
    initVideoController();
  }

  ///监听播放器
  initVideoController() {
    if (state.video.value.url == null) {
      return;
    }
    videoPlayerController =
        VideoPlayerController.network(state.video.value.url!)
          ..initialize().then((_) {
            update([videoTag]);
            videoAddListener();
            videoPlayerController?.play();
          });
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

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
    videoPlayerController?.dispose();
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
}
