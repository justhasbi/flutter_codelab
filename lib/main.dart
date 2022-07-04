import 'package:flutter/material.dart';
import 'package:flutter_codelab/main_screen.dart';
// import 'package:flutter_codelab/responsive_layout.dart';
// import 'package:flutter_codelab/layout_builder.dart';
// import 'package:flutter_codelab/media_query.dart';
// import 'package:flutter_codelab/navigation_example.dart';
// import 'package:flutter_codelab/flexible_example.dart';
// import 'package:flutter_codelab/detail_screen.dart';
// import 'package:flutter_codelab/list_view_example.dart';
// import 'package:flutter_codelab/rainbow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
