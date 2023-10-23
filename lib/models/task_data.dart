import 'package:flutter/foundation.dart';
import '../models/task.dart';
import 'package:collection/collection.dart';

class TasksData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread')
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTaskTitle (String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void toggleDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
