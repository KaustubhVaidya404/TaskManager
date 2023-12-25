import 'package:flutter/material.dart';
import 'package:task_manager/config/color_config.dart';
import 'package:task_manager/model/local_database.dart';
import 'package:task_manager/widgets/floating_action_button.dart';
import 'package:task_manager/widgets/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TodoList list = TodoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBarBackgroundColor,
        floatingActionButton: const FloatingActionWidget(),
        appBar: AppBar(
          title: const Text('All Task',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          backgroundColor: appBarBackgroundColor,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: list.todoList.length,
            itemBuilder: (context, index) {
              return TodoTileWidget(
                taskName: list.todoList[index][0],
                taskDesc: list.todoList[index][1],
                isComplete: list.todoList[index][2],
                deleteFunction: (p0) {},
                onChange: (p0) {},
              );
            }));
  }
}
