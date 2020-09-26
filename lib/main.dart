import 'package:flutter/material.dart';
import 'package:timerecorderapp/choice_page.dart';
import 'package:timerecorderapp/start_page.dart';
import 'package:flutter/rendering.dart';

void main() async {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WORKS',
      theme: ThemeData(
        fontFamily: "NotoSansJP",
      ),
      home: ChoicePage(),
    );
  }
}
