import 'package:flutter/material.dart';
import 'package:timerecorderapp/start_page.dart';
import 'package:flutter/rendering.dart';

void main() async {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "NotoSansJP",
      ),
      home: StartPage(),
    );
  }
}
