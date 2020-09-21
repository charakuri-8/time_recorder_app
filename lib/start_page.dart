import 'package:flutter/material.dart';
import 'package:timerecorderapp/account_page.dart';
import 'package:timerecorderapp/clock_model.dart';
import 'package:timerecorderapp/help_page.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WORKS',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.help),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpPage()),
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(2, (index) {
              return Card(
                child: Center(child: ClockModel()),
              );
            })),
      ),
    );
  }
}
