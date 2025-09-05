import 'package:flutter/material.dart';

class ContactProvider extends ChangeNotifier {
  final List<String> _contacts = [];

  List<String> get contacts => List.unmodifiable(_contacts);

  void addContact(String name) {
    final trimmed = name.trim();
    if (trimmed.isNotEmpty) _contacts.add(trimmed);
    notifyListeners();
  }

  void removeContact(String contact) {
    _contacts.remove(contact);
    notifyListeners();
  }
}
