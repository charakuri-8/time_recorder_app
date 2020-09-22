import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timerecorderapp/account_page.dart';
import 'package:timerecorderapp/help_page.dart';
import 'package:timerecorderapp/start_model.dart';

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
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  elevation: 5.0,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                DateFormat('yyyy年MM月dd日(E)').format(now),
                                style: TextStyle(
                                  fontSize: 42.0,
                                  color: Colors.black87,
                                  letterSpacing: 2.0,
                                ),
                              ),
                              Text(
                                DateFormat('HH:mm:ss').format(now),
                                style: TextStyle(
                                  fontSize: 100.0,
                                  color: Colors.black87,
                                  letterSpacing: 5.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '現在の時刻',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    letterSpacing: 2.0,
                                  ),
                                ),
                              ),
                            ],
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
                  elevation: 5.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.black12,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '00000000',
                                    style: TextStyle(
                                      fontSize: 60.0,
                                      letterSpacing: 12.0,
                                      color: Colors.black26,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          TenKeyPad('7'),
                                          TenKeyPad('4'),
                                          TenKeyPad('1'),
                                          TenKeyPad(''),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          TenKeyPad('8'),
                                          TenKeyPad('5'),
                                          TenKeyPad('2'),
                                          TenKeyPad('0'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          TenKeyPad('9'),
                                          TenKeyPad('6'),
                                          TenKeyPad('3'),
                                          TenKeyPad(''),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: RaisedButton(
                                                color: Colors.redAccent,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.backspace,
                                                      size: 60.0,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      '戻る',
                                                      style: TextStyle(
                                                        fontSize: 20.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    color: Colors.black54,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: RaisedButton(
                                                color: Colors.blueAccent,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.keyboard_return,
                                                      size: 60.0,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      '決定',
                                                      style: TextStyle(
                                                        fontSize: 20.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    color: Colors.black54,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.dialpad,
                                color: Colors.white,
                              ),
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '社員番号を入力',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    letterSpacing: 2.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
