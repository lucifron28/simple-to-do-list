import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String taskName;
  final bool isDone;
  const TaskItem({
    super.key, 
    required this.taskName,
    required this.isDone,
    });

  @override
  Widget build(BuildContext context) {
    return ListTile();
  }
}
