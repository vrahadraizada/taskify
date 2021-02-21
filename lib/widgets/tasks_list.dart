import 'package:flutter/material.dart';
import 'package:taskify/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:taskify/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, model, child) {
      return ListView.builder(
        itemCount: model.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: model.tasks[index].name,
            isChecked: model.tasks[index].isDone,
            checkboxCallback: (checkboxState) =>
                model.checkTask(model.tasks[index]),
            longPressCallback: () => model.deleteTask(model.tasks[index]),
          );
        },
      );
    });
  }
}

//OR

// class TasksList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final taskData = Provider.of<TaskData>(context).tasks;
//     return ListView.builder(
//       itemCount: taskData.length,
//       itemBuilder: (context, index) {
//         return TaskTile(
//           taskTitle: taskData[index].name,
//           isChecked: taskData[index].isDone,
//           checkboxCallback: (checkboxState) => taskData[index].toggleDone(),
//         );
//       },
//     );
//   }
// }
