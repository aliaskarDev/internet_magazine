import 'package:flutter/material.dart';
import 'package:internet_magazine/feature/bottom_nav/bottom_nav.dart';
import 'package:internet_magazine/feature/catolog/catolog_screen.dart';
import 'package:internet_magazine/feature/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const BottomNavigation(),
        '/profile': (context) => const ProfileScreen(),
        '/catolog': (context) => const CatologScreen(),
      },
    );
  }
}
