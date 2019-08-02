import 'package:flutter/material.dart';
import 'navigations/SettingsScreen.dart';
import 'navigations/AccountScreen.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NavigationDrawerState();
  }
}

class NavigationDrawerState extends State<NavigationDrawer> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = new DrawerHeader(child: new Text("Header"));
    var aboutChild = new AboutListTile(
      child: new Text("About"),
      applicationName: "Application Name",
      applicationVersion: "v1.0.0",
      applicationIcon: new Icon(Icons.adb),
      icon: new Icon(Icons.info),
    );

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, "Settings", SettingsScreen.routeName),
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Account", AccountScreen.routeName),
      aboutChild
    ];

    ListView listView = new ListView(
      children: myNavChildren,
    );
    return new Drawer(
      child: listView,
    );
  }

  ListTile getNavItem(var icon, String s, String routeName) {
    return new ListTile(
      leading: new Icon(icon),
      title: new Text(s),
      onTap: () {
        setState(() {
          //关闭drawer
          Navigator.of(context).pop();
          //跳转到routeName
          Navigator.of(context).pushNamed(routeName);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation Drawer Example"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Screen"),
        ),
      ),
      drawer: getNavDrawer(context),
    );
  }
}
