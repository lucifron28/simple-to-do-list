import 'package:flutter/material.dart';

class TaskItem extends ListTile {
  final String taskName;
  final  bool isDone;
  const TaskItem({
    super.key,
    required this.taskName,
    required this.isDone
    });
}
