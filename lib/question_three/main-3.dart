import 'package:flutter/material.dart';
import '/question_three/home_page.dart';

void main() {
  runApp(const CachApp());
}

class CachApp extends StatelessWidget {
  const CachApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
