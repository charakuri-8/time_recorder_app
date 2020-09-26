import 'package:flutter/material.dart';
import 'package:timerecorderapp/tablet_mode/home_page.dart';

class ChoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => TabletHomePage()),
                  );
                },
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.tablet,
                      size: 50,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'タブレットモード',
                        style: TextStyle(
                          fontSize: 36.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                color: Colors.greenAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.smartphone,
                      size: 50,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'スマホモード',
                        style: TextStyle(
                          fontSize: 36.0,
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
    );
  }
}
