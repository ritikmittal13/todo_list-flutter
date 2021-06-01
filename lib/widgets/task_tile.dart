import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final checkboxToggle;
  final deleteTile;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxToggle,
      required this.deleteTile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTile,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxToggle,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
