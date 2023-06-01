import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_video_demo/app/app_start.dart';
import 'package:flutter_video_demo/app/report_error_and_log.dart';

void main() {
  /// 捕获异常
  FlutterError.onError = (FlutterErrorDetails details) async {
    Zone.current.handleUncaughtError(
        details.exception, details.stack ?? StackTrace.empty);
  };
  runZonedGuarded(
    () => runApp(const AppStart()),
    (error, stackTrace) => ReportErrorAndLog(
      ReportErrorAndLog.makeDetails(error, stackTrace),
    ),
  );
}
