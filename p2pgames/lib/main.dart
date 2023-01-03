import 'package:flutter/material.dart';
import 'package:p2pgames/pages/home_screen.dart';

const thcolor = 0xff47c6fb;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(fontFamily: 'Gilroy'),
      themeMode: ThemeMode.system,
    );
  }
}
