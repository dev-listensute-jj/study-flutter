import 'package:flutter/material.dart';
import 'package:study04/screens/home_screens.dart';
import 'package:study04/services/api_service.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
