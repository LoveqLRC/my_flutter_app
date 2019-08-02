import 'package:flutter/material.dart';
import 'model/contact.dart';
import './contact_list_item.dart';

class ContactsList extends StatelessWidget {
  final List<ContactModel> _contactModel;

  ContactsList(this._contactModel);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactsList(),
    );
  }

  List<ContactListItem> _buildContactsList() {
    return _contactModel
        .map((contact) => new ContactListItem(contact))
        .toList();
  }
}
