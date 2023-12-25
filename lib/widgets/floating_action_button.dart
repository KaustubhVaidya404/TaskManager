import 'package:flutter/material.dart';
import 'package:task_manager/config/color_config.dart';
import 'package:task_manager/view/add_task_page.dart';

class FloatingActionWidget extends StatefulWidget {
  const FloatingActionWidget({super.key});

  @override
  State<FloatingActionWidget> createState() => _FloatingActionWidgetState();
}

class _FloatingActionWidgetState extends State<FloatingActionWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => AddTask())),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: floatingActionButtonColor,
      child: const Icon(Icons.add),
    );
  }
}
