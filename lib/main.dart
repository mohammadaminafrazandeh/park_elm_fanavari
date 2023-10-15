import 'package:flutter/material.dart';
import 'package:park_elm_fanavari/screens/main_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Estedad'),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
