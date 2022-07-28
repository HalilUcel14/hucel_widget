import 'package:flutter/material.dart';
import 'package:hucel_widget/hucel_widget.dart';

Color kTextColor = const Color(0xFF757575);

class DynamicText extends FittedBox {
  DynamicText({
    Key? key,
    required String data,
    required BuildContext context,
    Color? mColor,
    String? fontFamily,
    double? fontSize,
  }) : super(
          key: key,
          child: Text(
            data,
            style: TextStyle(
              color: mColor ?? kTextColor,
              fontFamily: fontFamily,
              fontSize: fontSize.isNull ? 16 : fontSize,
            ),
          ),
        );
}
