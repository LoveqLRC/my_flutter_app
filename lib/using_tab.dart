import 'package:flutter/material.dart';

import 'package:my_flutter_app/tabs/first_tab.dart';
import 'package:my_flutter_app/tabs/second_tab.dart';
import 'package:my_flutter_app/tabs/third_tab.dart';

class UsingTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new UsingTabState();
  }
}

class UsingTabState extends State<UsingTab>
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

  TabBar getTabBar() {
    return new TabBar(
      tabs: <Tab>[
        new Tab(
          icon: new Icon(Icons.favorite),
        ),
        new Tab(
          icon: new Icon(Icons.adb),
        ),
        new Tab(
          icon: new Icon(Icons.airport_shuttle),
        )
      ],
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return new TabBarView(
      children: tabs,
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Using Tabs"),
        backgroundColor: Colors.blue,
        bottom: getTabBar(),
      ),
      body: getTabBarView(<Widget>[new First(),new Second(),new Third()]),
    );
  }
}
