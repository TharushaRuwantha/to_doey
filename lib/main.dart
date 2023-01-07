import 'package:flutter/material.dart';
import 'package:to_doey/screans/task_screan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:TasksScrean(),
    );
  }
}
