import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_app/blocs/bloc/task_state.dart';
import 'package:todo_app/model/tasks.dart';

part 'task_event.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskState()) {
    on<AddTasks>((event, emit) {
      final state = this.state;
      emit(TaskState(
        allTasks: List.from(state.allTasks)..add(event.tasks),
      ));
    });
    on<UpdateTasks>((event, emit) {
      final state = this.state;
      // final task = event.tasks;

      List<Tasks> allTasks = List.from(state.allTasks)..remove(event.tasks);
      event.tasks.isDone == false
          ? allTasks.add(event.tasks.copyWith(isDone: true))
          : allTasks.add(event.tasks.copyWith(isDone: false));
      emit(TaskState(allTasks: allTasks));
    });
    on<DeleteTasks>((event, emit) {
      final state = this.state;
      emit(
        TaskState(
          allTasks: List.from(state.allTasks)..remove(event.tasks),
        ),
      );
    });
  }
}
