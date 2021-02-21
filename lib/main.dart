import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskify/models/task_data.dart';
import 'package:taskify/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = TaskData();
    return ChangeNotifierProvider(
      create: (context) => model,
      builder: (context, child) => MaterialApp(
        title: 'Taskify',
        debugShowCheckedModeBanner: true,
        theme: ThemeData(
          fontFamily: 'Reggae',
          accentColor: Colors.red,
          primaryColor: Colors.amber,
        ),
        home: TasksScreen(),
      ),
    );
  }
}
