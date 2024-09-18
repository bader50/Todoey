import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class DataModel extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buy Milk'),
    Task(title: 'Buy Eggs'),
    Task(title: 'Buy coco'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTaskCallback(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void toggleCheckbox(Task task) {
    task.toggleCheckbox();
    notifyListeners();
  }

  void deleteCheckbox(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
