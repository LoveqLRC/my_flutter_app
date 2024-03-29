import 'package:flutter/material.dart';
import 'dart:convert';

class LoadLocalJson extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoadLocalJsonState();
  }
}

class LoadLocalJsonState extends State<LoadLocalJson> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Load local json file"),
      ),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('data_repo/starwars_data.json'),
              builder: (context, snapshot) {
                var new_data = json.decode(snapshot.data.toString());
                return new ListView.builder(
                    itemCount: new_data == null ? 0 : new_data.length,
                    itemBuilder: (context, index) {
                      return new Card(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new Text("Name" + new_data[index]['name']),
                            new Text("Height: " + new_data[index]['height']),
                            new Text("Mass: " + new_data[index]['mass']),
                            new Text(
                                "Hair Color: " + new_data[index]['hair_color']),
                            new Text(
                                "Skin Color: " + new_data[index]['skin_color']),
                            new Text(
                                "Eye Color: " + new_data[index]['eye_color']),
                            new Text(
                                "Birth Year: " + new_data[index]['birth_year']),
                            new Text("Gender: " + new_data[index]['gender'])
                          ],
                        ),
                      );
                    });
              }),
        ),
      ),
    );
  }
}
