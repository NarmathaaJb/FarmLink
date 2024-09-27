import 'package:farmlink/pages/announcements.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FarmLink',
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: Colors.green),
        useMaterial3: true,
      ),
      home:  Announcements(),  // Use the LoginPage as the home screen
    );
  }
}
