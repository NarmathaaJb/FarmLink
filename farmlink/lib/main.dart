import 'package:farmlink/pages/farmers_profile.dart';
import 'package:farmlink/pages/login_page.dart';
import 'package:farmlink/pages/retailers_dashboard.dart';
import 'package:farmlink/pages/splash_screen.dart';
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
        colorScheme: ColorScheme.light(primary: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: '/splash', // Set initial route to UserPage
      routes: {
        '/splash' : (context) => SplashScreen(),
        '/user': (context) => UserPage(),
        '/login': (context) => LoginPage(),
        '/profile': (context) => FarmersProfile(),
      },  // Use the LoginPage as the home screen
    );
  }
}
