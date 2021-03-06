import 'package:flutter/material.dart';

class PaddingRow extends Padding {
  PaddingRow({
    Key? key,
    required EdgeInsets padding,
    required List<Widget> children,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Key? rowKey,
  }) : super(
          key: key,
          padding: padding,
          child: Row(
            children: children,
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            textBaseline: textBaseline,
            textDirection: textDirection,
            verticalDirection: verticalDirection,
            key: rowKey,
          ),
        );
}

class ExpandedRow extends Expanded {
  ExpandedRow({
    Key? key,
    int flex = 1,
    required List<Widget> children,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Key? rowKey,
  }) : super(
          key: key,
          flex: flex,
          child: Row(
            children: children,
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            textBaseline: textBaseline,
            textDirection: textDirection,
            verticalDirection: verticalDirection,
            key: rowKey,
          ),
        );
}

class RowInCenter extends Row {
  RowInCenter({
    Key? key,
    required List<Widget> children,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) : super(
          key: key,
          children: children,
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          textBaseline: textBaseline,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
        );
}

class ExpandedPaddingRow extends Expanded {
  ExpandedPaddingRow({
    Key? key,
    int flex = 1,
    required List<Widget> children,
    required EdgeInsetsGeometry padding,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Key? columnKey,
  }) : super(
          key: key,
          flex: flex,
          child: Padding(
            padding: padding,
            child: Row(
              children: children,
              crossAxisAlignment: crossAxisAlignment,
              mainAxisAlignment: mainAxisAlignment,
              mainAxisSize: mainAxisSize,
              textBaseline: textBaseline,
              textDirection: textDirection,
              verticalDirection: verticalDirection,
              key: columnKey,
            ),
          ),
        );
}
