import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskify/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:taskify/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, model, child) {
      return Scaffold(
        backgroundColor: Colors.amber,
        floatingActionButton: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.plus, color: Colors.grey[900]),
          backgroundColor: Colors.amber,
          hoverColor: Colors.amber[700],
          onPressed: () => showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: AddTaskScreen(),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: FaIcon(
                          FontAwesomeIcons.tasks,
                          color: Colors.amber,
                          size: 28,
                        ),
                        backgroundColor: Colors.grey[900],
                        radius: 30,
                      ),
                      Text(
                        'TASKIFY',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text('${model.tasks.length}-Task'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      );
    });
  }
}
