import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/task_data.dart';
import 'task_tile.dart';



class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder:(context,index){
      return TaskTile(
        taskTitle: Provider.of<TaskData>(context).tasks[index].name,
        isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
        checkBoxCallback: (checkboxState){
         Provider.of<TaskData>(context,listen: false).updateTask(Provider.of<TaskData>(context,listen: false).tasks[index]);

        },
        LongPressCallback: (){
          Provider.of<TaskData>(context).DeleteTask(Provider.of<TaskData>(context).tasks[index]);
        },
      );
    },
    itemCount: Provider.of<TaskData>(context).tasks.length,);
  }
}
