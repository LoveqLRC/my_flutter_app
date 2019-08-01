import 'package:flutter/material.dart';

import 'package:my_flutter_app/tabs/first_tab.dart';
import 'package:my_flutter_app/tabs/second_tab.dart';
import 'package:my_flutter_app/tabs/third_tab.dart';

class BottomTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BottomTabState();
  }
}

class BottomTabState extends State<BottomTab>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Using Bottom Navigation bar"),
        backgroundColor: Colors.blue,
      ),
      body: new TabBarView(
        children: <Widget>[new First(), new Second(), new Third()],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.favorite),
            ),
            new Tab(
              icon: new Icon(Icons.adb),
            ),
            new Tab(
              icon: new Icon(Icons.airport_shuttle),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
