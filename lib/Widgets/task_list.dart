import 'package:flutter/material.dart';
import '../model/Task.dart';
import 'task_tile.dart';


class TaskList extends StatefulWidget {

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
List<Task> tasks = [
  Task('buy milk'),
  Task('Do Home Work'),
  Task('Go shopping'),
];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder:(context,index){
      return TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkBoxCallback: (checkboxState){
          setState((){
                tasks[index].togleDone();
          });

        },
      );
    },
    itemCount: tasks.length,);
  }
}
