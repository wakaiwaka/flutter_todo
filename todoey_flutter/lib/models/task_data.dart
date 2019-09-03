import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'this is a task', isDone: false),
    Task(name: 'this is a task', isDone: false),
    Task(name: 'this is a task', isDone: false),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get getTasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final Task task = Task(name: newTaskTitle, isDone: false);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleButton();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
