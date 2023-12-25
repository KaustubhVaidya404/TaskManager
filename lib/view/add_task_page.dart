import 'package:flutter/material.dart';
import 'package:task_manager/config/color_config.dart';
import 'package:task_manager/model/local_database.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TodoList list = TodoList();

  final taskController = TextEditingController();
  final descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarBackgroundColor,
      appBar: AppBar(
        title: const Text('Add Task',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        backgroundColor: appBarBackgroundColor,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            child: const Text(
              'Task Name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 20,
            child: Container(),
          ),
          TextField(
            controller: taskController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
            child: Container(),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            child: const Text(
              'Task Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 20,
            child: Container(),
          ),
          TextField(
            controller: descController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
            child: Container(),
          ),
          ElevatedButton(
            onPressed: () {
              list.todoList
                  .add([taskController.text, descController.text, false]);
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                textStyle: const TextStyle(fontSize: 15)),
            child: const Text('Add Task'),
          )
        ]),
      ),
    );
  }
}
