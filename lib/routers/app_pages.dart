import 'package:flutter_video_demo/modules/main/index.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    /// 首页
    GetPage(
        name: Routes.appMAIN,
        page: () => const MainPage(),
        binding: MainBinding()),
  ];
}
