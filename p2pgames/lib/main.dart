import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:p2pgames/pages/detail_screen.dart';
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
    return GetMaterialApp(
      home: HomeScreen(),
      theme: ThemeData(fontFamily: 'Gilroy'),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/detail', page: () => const DetailScreen()),
      ],
    );
  }
}
