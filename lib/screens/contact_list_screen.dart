import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/contact_provider.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = context.watch<ContactProvider>().contacts;
    return Scaffold(
      appBar: AppBar(title: const Text("Contact List")),
      body: contacts.isEmpty
          ? const Center(child: Text('No contacts added yet.'))
          : ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) =>
                  ListTile(title: Text(contacts[index])),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
      ),
    );
  }
}
