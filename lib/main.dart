import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/pattern_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Design pattern Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PatternHome(),
    );
  }
}
