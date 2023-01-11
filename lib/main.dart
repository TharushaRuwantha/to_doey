import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_doey/screans/task_screan.dart';
import 'package:to_doey/model/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:  (context) => TaskData(),

      child: MaterialApp(
        home:TasksScrean(),
      ),
    );
  }
}
