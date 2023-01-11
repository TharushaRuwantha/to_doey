import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

  TaskTile({required this.taskTitle , required this.isChecked , required this.checkBoxCallback,required this.LongPressCallback});
  bool isChecked;
  String taskTitle;
  final Function(bool?)  checkBoxCallback;
  final Function()? LongPressCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: LongPressCallback,
      title: Text(

          taskTitle,
          style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough: null),

      ),

      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:checkBoxCallback,
      )
    );
  }
}

//
// void