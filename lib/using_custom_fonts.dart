import 'package:flutter/material.dart';
import './utils.dart' as utils;

class UsingCustomFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("using custom fonts"),
      ),
      body: new Container(
        child: new Center(
          child: new Text(
            "The quick brown fox jumps over the lazy dog",
            textAlign: TextAlign.center,
            style: utils.getCustomFontTextStyle(),
          ),
        ),
      ),
    );
  }
}
