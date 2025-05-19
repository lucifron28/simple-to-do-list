import 'package:flutter/material.dart';
import 'task_item.dart';

class Tasks extends StatefulWidget {
  final List<Map<String, dynamic>> tasks;
  const Tasks({super.key, required this.tasks});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          final task = widget.tasks[index];
          return TaskItem(
            taskName: task["taskName"],
            isDone: task["isDone"],
            onToggleDone: () {
              setState(() {
                widget.tasks[index]["isDone"] = !widget.tasks[index]["isDone"];
              });
            },
          );
        },
      ),
    );
  }
}
