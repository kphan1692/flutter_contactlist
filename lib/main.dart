import 'package:flutter/material.dart';
import 'package:flutter_application_1/details_screen.dart';
import 'home_screen.dart';

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
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailsScreen(data: 'Hi from routes'),
      }, //routes
      initialRoute: '/',
    );
  }
} //StatelessWidget
