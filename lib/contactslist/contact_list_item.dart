import 'package:flutter/material.dart';
import 'model/contact.dart';

class ContactListItem extends StatelessWidget {
  final ContactModel _contactModel;

  ContactListItem(this._contactModel);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new CircleAvatar(
        child: new Text(_contactModel.fullName[0]),
      ),
      title: new Text(_contactModel.fullName),
      subtitle: new Text(_contactModel.email),
    );
  }
}
