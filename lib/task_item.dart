import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String taskName;
  final bool isDone;
  final VoidCallback onToggleDone;
  const TaskItem({
    super.key, 
    required this.taskName,
    required this.isDone,
    required this.onToggleDone,
    });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
        ),
      trailing: IconButton(
        onPressed: onToggleDone,
        icon: Icon(
          isDone ? Icons.check_box_outline_blank : Icons.check_box,
          color: isDone ? Colors.green : null,
          ),
        ),
    );
  }
}
