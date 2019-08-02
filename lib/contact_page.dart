import 'package:flutter/material.dart';
import 'contactslist/contacts_list.dart';
import 'contactslist/model/contact.dart';

class ContactPage extends StatelessWidget {
  _buildContactList() {
    return <ContactModel>[
      const ContactModel(
          fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
      const ContactModel(
          fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
      const ContactModel(
          fullName: 'Nishant Srivastava', email: 'nishant.srivastava@example.com'),
      const ContactModel(
          fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
      const ContactModel(
          fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
      const ContactModel(
          fullName: 'Nishant Srivastava', email: 'nishant.srivastava@example.com'),
      const ContactModel(
          fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
      const ContactModel(
          fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
      const ContactModel(
          fullName: 'Nishant Srivastava', email: 'nishant.srivastava@example.com'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ContactPage"),
      ),
      body: new ContactsList(_buildContactList()),
    );
  }
}
