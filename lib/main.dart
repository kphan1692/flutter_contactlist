import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/add_contact_screen.dart';
import '/screens/contact_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),
      ),
      routes: {
        '/': (context) => const ContactListScreen(),
        '/details': (context) => const AddContactScreen(data: 'Hi from routes'),
      }, //routes
      initialRoute: '/',
    );
  }
} //StatelessWidget
