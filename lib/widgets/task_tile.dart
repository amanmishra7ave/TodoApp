import 'package:flutter/material.dart';
// import 'tasks_list.dart';

class TaskTile extends StatelessWidget {
  final bool isChcked;
  final String? taskTitle;
  final Function checkboxCallback;

  TaskTile(
      {required this.isChcked,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle!,
        style:
            TextStyle(decoration: isChcked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChcked,
          onChanged: (newValue) {
            checkboxCallback(newValue);
          }),
    );
  }
}
