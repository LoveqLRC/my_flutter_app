import 'package:flutter/material.dart';
import 'stateful_widget.dart';
import 'stateless_widget.dart';
import 'using_edittext.dart';
import 'load_local_image.dart';
import 'load_local_json.dart';
import 'using_http_get.dart';
import 'using_alter_dialog.dart';
import 'using_stepper.dart';
import 'using_tab.dart';
import 'using_bottom_tab.dart';
import 'using_custom_fonts.dart';
import 'using_gradient.dart';
import 'navigation_drawer.dart';
import 'contact_page.dart';
import 'using_snack_bar.dart';

void main() {
  runApp(new MaterialApp(
    title: "UsingStepper",
    home: new UsingSnackBar(),
//    theme: new ThemeData(primarySwatch: Colors.green),
  ));
}

//class MyButton extends StatefulWidget {
//  @override
//  MyButtonState createState() {
//    return new MyButtonState();
//  }
//}
//
//class MyButtonState extends State<MyButton> {
//  int counter = 0;
//  List<String> strings = ['Flutter', 'is', 'cool', "and", "awesome!"];
//  String displayedString = "Hello World!";
//
//  void onPressOfButton() {
//    setState(() {
//      displayedString = strings[counter];
//      counter = counter < 4 ? counter + 1 : 0;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Stateful Widget"),
//        backgroundColor: Colors.green,
//      ),
//      body: new Container(
//        child: new Center(
//          child: new Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              new Text(displayedString, style: new TextStyle(fontSize: 40.0)),
//              new Padding(padding: new EdgeInsets.all(10.0)),
//              new RaisedButton(
//                child: new Text(
//                  "Press me",
//                  style: new TextStyle(color: Colors.white),
//                ),
//                color: Colors.red,
//                onPressed: onPressOfButton,
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
