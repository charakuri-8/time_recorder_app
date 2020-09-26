import 'package:flutter/material.dart';

class TabletHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: _TitleCreate(),
        actions: <Widget>[
          _AccountLinkCreate(),
          _SettingLinkCreate(),
        ],
      ),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[],
        ),
      ),
    );
  }
}

// タイトル作成
class _TitleCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.timer,
          color: Colors.black,
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'WORKS',
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 3.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

// アカウントリンク作成
class _AccountLinkCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle),
      color: Colors.black,
      onPressed: () {},
    );
  }
}

//設定リンク作成
class _SettingLinkCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.settings),
      color: Colors.black,
      onPressed: () {},
    );
  }
}
