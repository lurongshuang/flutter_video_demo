import 'package:flutter/material.dart';
import 'package:flutter_video_demo/modules/main/widgets/tab_child/index.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:video_player/video_player.dart';

// Created by卢融霜
// on 2023/6/1
// Description：中间的播放器widget
// class VideoFragment extends GetView<TabChildController> {
//   const VideoFragment({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<TabChildController>(
//       id: TabChildController.videoTag,
//       builder: (cl) {
//         return Container(
//           alignment: Alignment.center,
//           child: controller.videoPlayerController != null &&
//                   controller.videoPlayerController!.value.isInitialized
//               ? AspectRatio(
//                   aspectRatio:
//                       controller.videoPlayerController!.value.aspectRatio,
//                   child: VideoPlayer(controller.videoPlayerController!),
//                 )
//               : const CircularProgressIndicator(),
//         );
//       },
//     );
//   }
// }
