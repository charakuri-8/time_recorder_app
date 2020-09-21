import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerecorderapp/help_model.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HelpModel>(
      create: (_) => HelpModel()..fetchHelps(),
      child: Scaffold(
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
            'ヘルプ',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        body: Consumer<HelpModel>(
          builder: (context, model, child) {
            final helps = model.helps;
            final listTiles = helps
                .map(
                  (helps) => ListTile(
                    title: Text(helps.title),
                  ),
                )
                .toList();
            return ListView(
              children: listTiles,
            );
          },
        ),
      ),
    );
  }
}
