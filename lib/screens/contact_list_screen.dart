import 'package:flutter/material.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact List Screen")),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Details'),
          onPressed: () {
            Navigator.pushNamed(context, '/details');
          }, //OnPressed
        ),
      ),
    );
  }
}
