import 'package:flutter/material.dart';
import 'package:state_management_examples/models/task.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    late String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30.0,
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: new InputDecoration(
                hintText: "Enter your Todo",
                labelStyle: new TextStyle(color: Colors.blueGrey),
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            ElevatedButton(child: Text('Add', style: TextStyle(
              color: Colors.white
            ),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              onPressed:(){

              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
            ),
          ],
        ),
      ),
    );
  }
}
