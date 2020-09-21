import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockModel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClockModelState();
  }
}

class _ClockModelState extends State<ClockModel> {
  String _time = '';

  @override
  void initState() {
    Timer.periodic(
      Duration(seconds: 1),
      _onTimer,
    );
    super.initState();
  }

  void _onTimer(Timer timer) {
    var now = DateTime.now();
    var formatter = DateFormat('yyy.MM.dd HH:mm:ss');
    var formattedTime = formatter.format(now);
    setState(() => _time = formattedTime);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _time,
      style: TextStyle(
        fontSize: 60,
      ),
    );
  }
}
