import 'package:flutter/material.dart';

import 'Tab_page.dart';

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
        backgroundColor: Color(0xfff5f5f5),
        primarySwatch: Colors.blue,
      ),
      home: TabPage(),
    );
  }
}