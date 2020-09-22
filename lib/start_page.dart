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
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '00000000',
                                    style: TextStyle(
                                      fontSize: 60.0,
                                      letterSpacing: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Colors.grey,
                              height: 0.0,
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
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '7',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '4',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '1',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
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
                                              child: OutlineButton(
                                                child: Text(
                                                  '8',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '5',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '2',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '0',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
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
                                              child: OutlineButton(
                                                child: Text(
                                                  '9',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '6',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '3',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
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
                                              child: OutlineButton(
                                                child: Text(
                                                  '',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox.expand(
                                              child: OutlineButton(
                                                child: Text(
                                                  '',
                                                  style: TextStyle(
                                                    fontSize: 62.0,
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
                                  '社員番号',
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
