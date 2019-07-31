import 'package:flutter/material.dart';

class UsingAlterDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new UsingAlertDialogState();
  }
}

class UsingAlertDialogState extends State<UsingAlterDialog> {
  AlertDialog dialog = new AlertDialog(
    content: new Text(
      "Hello World",
      style: new TextStyle(fontSize: 30.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Using alert dialog"),
      ),
      body: new Container(
        child: new Center(
          child: new RaisedButton(
              child: new Text("Hello World"),
              onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return dialog;
                });
          }),
        ),
      ),
    );
  }
}
