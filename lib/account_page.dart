import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.close),
          color: Colors.black87,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'アカウント',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
