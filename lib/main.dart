import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/data_model.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataModel(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
