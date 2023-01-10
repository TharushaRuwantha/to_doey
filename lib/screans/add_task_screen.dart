import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

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
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: TextButton(
                  
                  onPressed: () {
                    //TODO add our task to the list
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
