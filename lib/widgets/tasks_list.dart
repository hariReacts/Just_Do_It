import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/widgets/tasks_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) => TaskTile(
          taskTitle: taskData.tasks[index].name,
          isChecked: taskData.tasks[index].isDone,
          checkBoxCallBack: (checkboxState) {
            taskData.updateTask(taskData.tasks[index]);
          },
          longPressCallback: () {
            taskData.deleteTask(taskData.tasks[index]);
          },
        ),
        itemCount: taskData.taskCount,
      );
    });
  }
}
