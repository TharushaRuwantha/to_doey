import 'package:flutter/foundation.dart';
import 'package:to_doey/model/Task.dart';
class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task('buy milk'),
    Task('Do Home Work'),
    Task('Go shopping'),
  ];

  int get tasksCount{
    return tasks.length;
  }

  void addTask(String title) {
    tasks.add(Task(title));
    notifyListeners();

  }

  void updateTask(Task task){
    task.togleDone();
    notifyListeners();
  }

  void DeleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}