import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timerecorderapp/account_page.dart';
import 'package:timerecorderapp/help_page.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Icon(
              Icons.timer,
              color: Colors.black87,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'WORKS',
                style: TextStyle(
                  color: Colors.black87,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            color: Colors.black87,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AccountPage(),
                  fullscreenDialog: true,
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.help),
            color: Colors.black87,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HelpPage(),
                  fullscreenDialog: true,
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 250,
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          color: Colors.grey,
                          child: Column(
                            children: <Widget>[
                              Text(
                                DateFormat('yyyy年MM月dd日').format(now),
                                style: TextStyle(
                                  fontSize: 35.0,
                                ),
                              ),
                              Text(
                                DateFormat('HH:mm').format(now),
                                style: TextStyle(
                                  fontSize: 65.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 600,
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              '現在ログ',
                              style: TextStyle(
                                fontSize: 26,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      '入力ウィジェット',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
