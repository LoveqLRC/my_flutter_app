import 'package:flutter/material.dart';

class MyEditText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyEditTextState();
  }
}

class MyEditTextState extends State<MyEditText> {

  String results = "";
  final TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Using EditText"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(hintText: "输入提示文字"),
              controller: controller,
              onSubmitted: (String str) {
                setState(() {
                  results = results + "\n" + str;
                  controller.text = "";
                });
              },
            ),
            new Text(results),

          ],
        ),)
      ,
    );
  }
}
