import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_video_demo/constants/app_colors.dart';
import 'package:flutter_video_demo/constants/text_utils/text_utils.dart';
import 'package:flutter_video_demo/modules/main/bean/Captions.dart';
import 'package:flutter_video_demo/modules/main/widgets/custom_page_view.dart';
import 'package:flutter_video_demo/modules/main/widgets/my_photos.dart';
import 'package:flutter_video_demo/modules/main/widgets/tab_child/index.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (_) {
        return Scaffold(
          endDrawerEnableOpenDragGesture: true,
          body: _tabPageWidget(),
        );
      },
    );
  }

  ///外层结构
  Widget _tabPageWidget() {
    return DefaultTabController(
      length: controller.tabTitleList.length,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: _buildTableViewWidget(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Get.mediaQuery.padding.top,
            child: _buildTabBarWidget(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Get.mediaQuery.padding.top,
            child: const Align(
              alignment: Alignment.topCenter,
              child: MyPhotos(),
            ),
          )
        ],
      ),
    );
  }

  ///构建选项卡
  Widget _buildTabBarWidget() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 50.r,
        alignment: Alignment.center,
        child: TabBar(
          tabs: controller.tabTitleList.map((e) => Tab(text: e)).toList(),
          indicatorColor: Colors.transparent,
          unselectedLabelColor: TCS.gray999,
          labelColor: TCS.yellowBBcd5d,
          unselectedLabelStyle: TextStyle(fontSize: TU.fontSize_18),
          labelStyle: TextStyle(fontSize: TU.fontSize_18),
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
    );
  }

  ///构建 TabBarView
  Widget _buildTableViewWidget() {
    return TabBarView(
      children: [Obx(() => widgetTabViewList()), Container(color: Colors.grey)],
    );
  }

  Widget widgetTabViewList() {
    if (controller.state.captionsList.value.isEmpty) {
      return Container();
    }
    return CustomPageView.builder(
        controller: controller.pageController,
        onPageChanged: controller.onPageChanged,
        onPageEndChanged: controller.onPageEndChanged,
        itemCount: controller.state.captionsList.value.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return TabChildPage(
            controller.state.captionsList.value[index],
            key: ObjectKey(controller.state.captionsList.value[index]),
          );
        });
  }
}
