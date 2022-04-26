import 'package:flutter/material.dart';

class SpaceSizedHeightBox extends SizedBox {
  const SpaceSizedHeightBox(
      {Key? key, required BuildContext context, required double height})
      : super(key: key, height: height);
}

class SpaceSizedWidhtBox extends SizedBox {
  const SpaceSizedWidhtBox(
      {Key? key, required BuildContext context, required double width})
      : assert(width > 0 && width <= 1),
        super(key: key, width: width);
}
