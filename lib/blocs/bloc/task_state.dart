import 'package:equatable/equatable.dart';
import 'package:todo_app/model/tasks.dart';

// ignore: must_be_immutable
class TaskState extends Equatable {
  List<Tasks> allTasks;
  TaskState({
    this.allTasks = const <Tasks>[],
  });

  @override
  List<Object> get props => [allTasks];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTasks': allTasks.map((x) => x.toMap()).toList(),
    };
  }

  factory TaskState.fromMap(Map<String, dynamic> map) {
    return TaskState(
      allTasks: List<Tasks>.from(
        (map['allTasks'] as List<int>).map<Tasks>(
          (x) => Tasks.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
