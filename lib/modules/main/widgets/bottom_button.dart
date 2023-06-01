import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_video_demo/constants/app_colors.dart';
import 'package:flutter_video_demo/constants/text_utils/text_utils.dart';

// Created by卢融霜
// on 2023/6/1
// Description：
class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Transform.translate(
            offset: const Offset(0, -20),
            child: Transform.rotate(
                angle: -0.2,
                child: IconBoxWidget(Icons.thumb_up,
                    iconColor: TCS.yellowBBcd5d))),
        IconBoxWidget(Icons.thumb_up),
        IconBoxWidget(Icons.thumb_up),
        IconBoxWidget(Icons.thumb_up)
      ],
    );
  }
}

class IconBoxWidget extends StatelessWidget {
  IconData iconData;
  Color? iconColor;

  IconBoxWidget(this.iconData, {this.iconColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 30.r),
      decoration: BoxDecoration(
          color: TCS.gray999,
          border: Border.all(color: TCS.gray666, width: 4.r),
          borderRadius: BorderRadius.circular(10.r)),
      child: Icon(
        iconData,
        size: TU.fontSize_30,
        color: iconColor ?? Colors.white,
      ),
    );
  }
}
