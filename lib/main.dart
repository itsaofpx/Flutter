import 'package:flutter/material.dart';
import 'package:test/detail.dart';
import 'package:test/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "poppins"),
      home: const MainScreen(),
      initialRoute: '/',
      routes: {
        '/home': (context) => const MainScreen(),
        '/details': (context) => const Detail()
      },
    );
  }
}
