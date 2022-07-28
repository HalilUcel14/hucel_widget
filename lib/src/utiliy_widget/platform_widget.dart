import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformWidget extends StatelessWidget {
  const PlatformWidget(
      {Key? key, required this.onMobile, required this.onDesktopWeb})
      : super(key: key);

  final Widget onMobile;
  final Widget onDesktopWeb;

  @override
  Widget build(BuildContext context) {
    bool isMobile = (defaultTargetPlatform == TargetPlatform.android ||
            defaultTargetPlatform == TargetPlatform.iOS)
        ? true
        : false;
    return isMobile ? onMobile : onDesktopWeb;
  }
}
