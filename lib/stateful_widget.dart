import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ['Flutter', 'is', 'cool', "and", "awesome!"];
  String displayedString = "Hello World!";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Stateful Widget"),
          backgroundColor: Colors.green,
        ),
        body: new Center(
          child: new Container(
            color: Colors.green,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text(
                  displayedString,
                  style: new TextStyle(fontSize: 40.0),
                ),
                new Padding(padding: new EdgeInsets.all(10.0)),
                new RaisedButton(
                  child: new Text(
                    "Press me aa",
                    style: new TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: onPressOfButton,
                )
              ],
            ),
          ),
        ));
  }

  void onPressOfButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }
}
