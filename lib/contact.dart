import 'package:flutter_web/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("GO back"),
        ),
      ),
    );
  }
}
