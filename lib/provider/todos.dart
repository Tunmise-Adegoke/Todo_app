import 'package:flutter/material.dart';
import 'package:todo_app/model/tasks.dart';

class TodoProvider extends ChangeNotifier {
  List <Tasks> tasks = [
    Tasks(name: 'long', isDone: false, createdTime: DateTime.now()),
    Tasks(name: 'long', isDone: false, createdTime: DateTime.now()),
    Tasks(name: 'long', isDone: false, createdTime: DateTime.now()),
  ];
  
  void addTasks(String newTaskTitle) {
    final task = Tasks(name: name, isDone: isDone, createdTime: createdTime) 
  }
  
}


