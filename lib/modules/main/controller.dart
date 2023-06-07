import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_video_demo/modules/main/bean/Captions.dart';
import 'package:get/get.dart';

import 'index.dart';

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MainController();

  final MainState state = MainState();

  PageController? pageController;

  ///tab选项卡名称
  final List<String> tabTitleList = ["首页", "词汇"];
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
    List<dynamic> list = map["data"]["list"];
    if (list.isNotEmpty) {
      for (var element in list) {
        Captions captions = Captions.fromJson(element);
        state.captionsList.value.add(captions);
      }
    }

    ///将数据存储到 state

    // state.video(captions.video);
    // if (captions.subtitles != null && captions.subtitles?.length == 2) {
    //   state.subtitleEN(captions.subtitles![0]);
    //   state.subtitleCN(captions.subtitles![1]);
    // }
    // if (captions.words != null && captions.words!.isNotEmpty) {
    //   state.word(captions.words![0]);
    // }
    // state.user(captions.user);

    pageController = PageController();
  }

  void onPageChanged(int index) {}

  void onPageEndChanged(int index) {
    // VideoFragmentController videoPlayerController =
    //     Get.find<VideoFragmentController>();
    // videoPlayerController.changeVide(state.captionsList.value[index]);
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
}
