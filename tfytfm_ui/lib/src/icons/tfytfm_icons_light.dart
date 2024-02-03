import 'package:tfytfm_ui/tfytfm_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TFYTFMIconsLight extends TFYTFMIcon {
  @override
  SvgPicture backIcon({double? size, Color? color}) {
    return super.backIcon(
      color: color ?? TFYTFMColors.black,
      size: size ?? 14,
    );
  }

  @override
  SvgPicture emailOutline({double? size, Color? color}) {
    return super.emailOutline(
      color: color ?? TFYTFMColors.black,
      size: size ?? 14,
    );
  }
}
