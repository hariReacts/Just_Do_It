import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  // final Function checkBoxCallBack;
  TaskTile(
      {this.isChecked = false,
      required this.taskTitle,
      required this.checkBoxCallBack,
      required this.longPressCallback});
  final bool isChecked;
  final ValueChanged<bool?>? checkBoxCallBack;

  final void Function() longPressCallback;
  //final Null Function(dynamic checkboxState) checkboxCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decorationColor: Colors.red,
          decorationThickness: 3,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
      onLongPress: longPressCallback,
    );
  }
}
