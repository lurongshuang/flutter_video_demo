import 'package:flutter_video_demo/modules/main/bean/Captions.dart';
import 'package:get/get.dart';

class MainState {
  // var captions = Captions().obs;
  var captionsList = RxList<Captions>([]).obs;
}
