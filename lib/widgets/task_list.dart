import 'package:flutter/material.dart';
import 'package:todo_app/model/tasks.dart';

import '../model/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  late List <Tasks> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context,
          int index) {
        return TaskTile(isChecked: tasks[index].isDone,
            taskTitle: tasks[index].name);
      },
      itemCount: tasks.length,
    );
  }
}
