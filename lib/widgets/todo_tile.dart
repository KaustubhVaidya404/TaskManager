// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTileWidget extends StatelessWidget {
  final String taskName;
  final String taskDesc;
  final bool isComplete;
  Function(bool?)? onChange;
  Function(BuildContext)? deleteFunction;

  TodoTileWidget({
    super.key,
    required this.taskName,
    required this.taskDesc,
    required this.isComplete,
    required this.deleteFunction,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
        child: Slidable(
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Colors.red.shade300,
                borderRadius: BorderRadius.circular(12),
              )
            ],
          ),
          child: Container(
            padding: const EdgeInsets.all(24.00),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Row(children: [
              Checkbox(
                value: isComplete,
                onChanged: onChange,
                activeColor: Colors.black,
              ),
              Column(
                children: [
                  Text(
                    taskName,
                    style: TextStyle(
                        decoration: isComplete
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    taskDesc,
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
