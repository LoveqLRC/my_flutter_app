import 'package:flutter/material.dart';

class ImageFromNetwork extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Image From Network"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Image.network(
              "https://github.com/nisrulz/flutter-examples/raw/develop/image_from_network/img/flutter_logo.png"
            ),
            new Image.network(
              "https://github.com/nisrulz/flutter-examples/raw/develop/image_from_network/img/loop_anim.gif"
            )
          ],
        ),
      ),
    );
  }



}
