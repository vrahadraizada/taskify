import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskify/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Consumer<TaskData>(builder: (context, model, child) {
      return Container(
        color: Color(0xFF757575),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('ADD TASK', textAlign: TextAlign.center),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) => newTaskTitle = newText,
              ),
              SizedBox(height: 10),
              MaterialButton(
                onPressed: () {
                  model.addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Text('Add', style: TextStyle(color: Colors.amber)),
                color: Colors.grey[900],
              ),
            ],
          ),
        ),
      );
    });
  }
}
