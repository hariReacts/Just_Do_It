import 'package:flutter/cupertino.dart';
import 'package:todo_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Click the + button to add a Task'),
    Task(name: 'Tap here to complete               ------------>'),
    Task(name: 'Long Press to delete a Task'),
  ];
  void addTask(String text) {
    final task = Task(name: text);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  int get taskCount {
    return tasks.length;
  }
}
