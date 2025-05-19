import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String taskName;
  final bool isDone;
  final VoidCallback onToggleDone;
  final VoidCallback onDelete;
  const TaskItem({
    super.key,
    required this.taskName,
    required this.isDone,
    required this.onToggleDone,
    required this.onDelete
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: ListTile(
          title: Center(
            child: Text(
              taskName,
              style: TextStyle(
                decoration: isDone ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: onToggleDone,
            icon: Icon(
              isDone ? Icons.check_box : Icons.check_box_outline_blank,
              color: isDone ? Colors.green : null,
            ),
          ),
          trailing: IconButton(
            onPressed: onDelete,
            icon: Icon(Icons.delete, color: Colors.red,),
            ),
        ),
      ),
    );
  }
}
