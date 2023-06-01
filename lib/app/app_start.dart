import 'package:flutter/material.dart';
import 'package:flutter_video_demo/app/app_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_video_demo/modules/main/bindings.dart';
import 'package:flutter_video_demo/modules/main/index.dart';
import 'package:flutter_video_demo/routers/app_pages.dart';
import 'package:flutter_video_demo/routers/app_route_observer.dart';
import 'package:flutter_video_demo/theme/app_theme.dart';
import 'package:get/get.dart';

class AppStart extends StatelessWidget {
  const AppStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: AppConfig.designSize,
        builder: (context, _) => GetMaterialApp(
          title: AppConfig.appName,
          supportedLocales: AppConfig.supportedLocales,
          localizationsDelegates: AppConfig.localizationsDelegates,
          navigatorObservers: [AppRouteObserver<PageRoute>()],
          debugShowCheckedModeBanner: false,
          builder: (BuildContext context, Widget? child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!),
          initialRoute: Routes.appMAIN,
          theme: appThemeData,
          getPages: AppPages.pages,
          initialBinding: MainBinding(),
          home: const MainPage(),
        ),
      );
}
