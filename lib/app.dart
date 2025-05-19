import 'package:flutter/material.dart';
import 'tasks.dart';

class ToDoListApp extends StatelessWidget {
  const ToDoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-do List',
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  Future<void> addTaskDialog(BuildContext context) async {
    final TextEditingController addTaskController = TextEditingController();
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Task'),
          content: TextField(
            controller: addTaskController,
            decoration: InputDecoration(hintText: 'Add Task Here'),
          ),
          actions: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(color: Colors.red),
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  child: Text('Close'),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-do List'),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => addTaskDialog(context),
                icon: Icon(Icons.add),
              );
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(color: Colors.grey, height: 1.0),
        ),
      ),
      body: Tasks(),
    );
  }
}
