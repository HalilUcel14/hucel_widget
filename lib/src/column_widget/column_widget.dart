import 'package:flutter/material.dart';

class PaddingColumn extends Padding {
  PaddingColumn({
    Key? key,
    required EdgeInsets padding,
    required List<Widget> children,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Key? columnKey,
  }) : super(
          key: key,
          padding: padding,
          child: Column(
            children: children,
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            textBaseline: textBaseline,
            textDirection: textDirection,
            verticalDirection: verticalDirection,
            key: columnKey,
          ),
        );
}

class ExpandedColumn extends Expanded {
  ExpandedColumn({
    Key? key,
    int flex = 1,
    required List<Widget> children,
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
          child: Column(
            children: children,
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            textBaseline: textBaseline,
            textDirection: textDirection,
            verticalDirection: verticalDirection,
            key: columnKey,
          ),
        );
}

class ColumnInCenter extends Column {
  ColumnInCenter({
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

class ExpandedPaddingColumn extends Expanded {
  ExpandedPaddingColumn({
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
            child: Column(
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
