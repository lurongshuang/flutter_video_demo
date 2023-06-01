import 'package:flutter/material.dart';
/// 没有catch 到的异常上报
class ReportErrorAndLog {
  ReportErrorAndLog(FlutterErrorDetails details) {
    final errorMsg = {
      "exception": details.exceptionAsString(),
      "stackTrace": details.stack.toString(),
    };

    /// 上报错误
    /// 请求服务器
    debugPrint(
        "----------------------------------------上报错误----------------------------------------");
    debugPrint(
        "----------------------------------------上报错误----------------------------------------");
    debugPrint(
        "----------------------------------------上报错误----------------------------------------");
    debugPrint(
        "----------------------------------------上报错误----------------------------------------");
    debugPrint("reportErrorAndLog : $errorMsg");
    // UploadError.saveError(errorMsg.toString());
  }

  // 构建错误信息
  static FlutterErrorDetails makeDetails(Object error, StackTrace stackTrace) =>
      FlutterErrorDetails(stack: stackTrace, exception: error);
}
