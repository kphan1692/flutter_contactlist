import 'package:flutter/material.dart';
import 'screens/add_contact_screen.dart';
import '/screens/contact_list_screen.dart';
import '/providers/contact_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactProvider(),
      child: MaterialApp(
        title: 'Navigation Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),
        ),
        routes: {
          '/': (context) => const ContactListScreen(),
          '/add': (context) => const AddContactScreen(),
        }, //routes
        initialRoute: '/',
      ),
    );
  }
} //StatelessWidget
