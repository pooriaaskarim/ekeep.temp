import 'package:ekeep/shelf.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ekeep Example App',
      theme: EkeepTheme.darkTheme,
      home: const HomePage(),
    );
  }
}
