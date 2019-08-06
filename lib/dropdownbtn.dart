import 'package:flutter/material.dart';

class DropDownBtn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DropDownBtnState();
  }
}

class DropDownBtnState extends State<DropDownBtn> {
  List _fruits = ["Apple", "Banana", "Pineapple", "Mango", "Graps"];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectedFruits;

  @override
  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(_fruits);
    _selectedFruits = _dropDownMenuItems[0].value;

    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = new List();
    for (var fruit in fruits) {
      items.add(new DropdownMenuItem(child: new Text(fruit), value: fruit));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("DropDown Button Example"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Please choose a fruit: "),
              new DropdownButton(
                  value: _selectedFruits,
                  items: _dropDownMenuItems,
                  onChanged: changedDropDownItem)
            ],
          ),
        ),
      ),
    );
  }

  void changedDropDownItem(String selectedFruit) {
    setState(() {
      _selectedFruits = selectedFruit;
    });
  }
}
