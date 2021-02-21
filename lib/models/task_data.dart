// import 'package:flutter/material.dart';  //it also contain foundation.dart
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';
// import 'dart:collection';  //for UnmodifiableListView

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    // Task(name: 'Buy Milk'),
    // Task(name: 'Clean Room'),
    // Task(name: 'Complete Project'),
  ];

  List<Task> get tasks {
    return [..._tasks]; //return _tasks;
  }

//OR

  // UnmodifiableListView<Task> get tasks {
  //   return UnmodifiableListView(_tasks);
  // }

  void addTask(String newTask) {
    final taskx = newTask == null ? Task(name: 'No Task') : Task(name: newTask);
    _tasks.add(taskx);
    notifyListeners(); //it is like setState()
  }

  void checkTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

//newTask & task is just a parameter name only for their funtions in this page
