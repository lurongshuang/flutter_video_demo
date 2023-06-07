import 'package:flutter_video_demo/modules/main/bean/Captions.dart';
import 'package:flutter_video_demo/modules/main/widgets/tab_child/state.dart';
import 'package:get/get.dart';

class TabChildController extends GetxController {
  Captions captions;

  TabChildController(this.captions);

  final TabChildState state = TabChildState();

  void onTap() {}


  @override
  void onInit() {
    super.onInit();
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

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }






// @override
// void onClose() {
//   super.onClose();
// }
}
