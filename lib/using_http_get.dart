import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class MyGetHttp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyGetHttpState();
  }
}

class MyGetHttpState extends State<MyGetHttp> {
  final String url = "https://swapi.co/api/people";
  List data;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var dataConvertedToJson = json.decode(response.body);
      data = dataConvertedToJson['results'];
    });

    return "Successfull";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Retrieve JSON Data via HTTP GET"),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (context, index) {
          return new Container(
            child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Card(
                      child: new Container(
                        padding: EdgeInsets.all(15.0),
                        child: new Text(
                          data[index]['name'],
                          style: new TextStyle(fontSize: 20.0,color: Colors.lightBlueAccent),
                        ),
                      ),
                    )
                  ],
                ),
            ),
          );
        },
      ),
    );
  }
}
