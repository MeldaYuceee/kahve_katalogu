import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const KahveApp());
}

class KahveApp extends StatelessWidget {
  const KahveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kahve Kataloğu',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
     home: HomeScreen(),
    );
  }
}