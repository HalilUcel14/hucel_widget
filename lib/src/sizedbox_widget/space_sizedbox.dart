import 'package:flutter/material.dart';

class SpaceSizedHeight extends SizedBox {
  const SpaceSizedHeight(
      {Key? key, required BuildContext context, required double height})
      : super(key: key, height: height);
}

class SpaceSizedWidht extends SizedBox {
  const SpaceSizedWidht(
      {Key? key, required BuildContext context, required double width})
      : assert(width > 0 && width <= 1),
        super(key: key, width: width);
}
