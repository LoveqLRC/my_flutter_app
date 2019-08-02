import 'package:flutter/material.dart';

class UsingSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Using SnackBar"),
      ),
      body: new Center(
        child: new MyBtn(),
      ),
    );
  }
}

class MyBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
        child: new Text("Show SnackBar"),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            new SnackBar(
              content: new Text("Hello! I am SnackBar :)"),
              duration: new Duration(seconds: 3),
              action: new SnackBarAction(
                  label: "Hit Me (Action)",
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content: new Text(
                          "Hello! I am shown becoz you pressed Action :)"),
                    ));
                  }),
            ),
          );
        });
  }
}
