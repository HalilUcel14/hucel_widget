import 'package:flutter/material.dart';
import 'package:hucel_widget/hucel_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaddingColumn(
      // 2'si bir arada
      padding: const EdgeInsets.all(8.0),
      children: [
        ExpandedPaddingColumn(
          // 3'ü bi arada
          children: const [],
          padding: const EdgeInsets.all(8.0),
          flex: 1,
        ),
      ],
    );
  }
}
