import 'package:flutter_video_demo/modules/main/bean/Subtitle.dart';
import 'package:flutter_video_demo/modules/main/bean/User.dart';
import 'package:flutter_video_demo/modules/main/bean/Video.dart';
import 'package:flutter_video_demo/modules/main/bean/Word.dart';
import 'package:get/get.dart';

class VideoState {
  /// 视频播放内容
  var video = Video().obs;

  /// 中文字幕集合
  var subtitleCN = Subtitle().obs;

  ///中文字幕
  var subtitleCNStr = "".obs;

  /// 英文字幕集合
  var subtitleEN = Subtitle().obs;

  ///英文字幕
  var subtitleENStr = "".obs;

  /// 单词
  var word = Word().obs;

  ///用户信息
  var user = User().obs;

  ///播放按钮
  var showPlayButton = false.obs;
}
