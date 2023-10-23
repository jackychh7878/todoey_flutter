import 'package:flutter/material.dart';
import '../models/task_data.dart';
import '../widgets/task_tile.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = tasksData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                tasksData.toggleDone(task);
              },
              longPressCallback: () {
                tasksData.removeTask(task);
              },
            );
          },
          itemCount: tasksData.taskCount,
        );
      },
    );
  }
}
