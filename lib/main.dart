import 'package:flutter/material.dart';
import 'package:flutter_exercise_1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 9, 16, 101)),
          useMaterial3: true,
        ),
        home: Home());
  }
}
