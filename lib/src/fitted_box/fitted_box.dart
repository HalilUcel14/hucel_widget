import 'package:flutter/cupertino.dart';

class FittedTextBox extends FittedBox {
  FittedTextBox({
    Key? key,
    required String text,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWarp,
    TextOverflow? textOverflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) : super(
          key: key,
          child: Text(
            text,
            style: style,
            strutStyle: strutStyle,
            textAlign: textAlign,
            softWrap: softWarp,
            locale: locale,
            maxLines: maxLines,
            overflow: textOverflow,
            semanticsLabel: semanticsLabel,
            textDirection: textDirection,
            textHeightBehavior: textHeightBehavior,
            textScaleFactor: textScaleFactor,
            textWidthBasis: textWidthBasis,
          ),
        );
}
