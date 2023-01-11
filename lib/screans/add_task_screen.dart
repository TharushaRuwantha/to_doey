import 'package:flutter/material.dart';
import 'package:to_doey/model/Task.dart';
import 'package:to_doey/model/Task.dart';
import 'package:provider/provider.dart';
import 'package:to_doey/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  late  String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Text(

                'Add Task',
                  textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent,
                  fontSize: 50.0,
                ),
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTitle){
                newTaskTitle = newTitle;
              },
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: TextButton(
                  
                  onPressed: () {
                    final task =  Task(newTaskTitle);
                    Provider.of<TaskData>(context , listen: false).addTask(newTaskTitle);
                    Navigator.pop(context);


                  },
                  style:ButtonStyle(

                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent)
                  ) ,
                  child: Text(
                      'Add',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
