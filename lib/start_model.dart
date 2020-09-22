import 'package:flutter/material.dart';

// テンキーパッド
class TenKeyPad extends StatelessWidget {
  TenKeyPad(this._key);

  final _key;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox.expand(
        child: RaisedButton(
          color: Colors.white,
          child: Text(
            _key,
            style: TextStyle(
              fontSize: 65.0,
            ),
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black54,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
