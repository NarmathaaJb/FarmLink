import 'package:farmlink/pages/farmers_profile.dart';
import 'package:farmlink/pages/login_page.dart';
import 'package:farmlink/pages/user_page.dart';
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
        colorScheme: ColorScheme.light(primary: Color(0xFFBAB86C)),
        useMaterial3: true,
      ),
      initialRoute: '/user', // Set initial route to UserPage
      routes: {
        '/user': (context) => UserPage(),
        '/login': (context) => LoginPage(),
        '/profile': (context) => FarmersProfile(),
      },
    );
  }
}
