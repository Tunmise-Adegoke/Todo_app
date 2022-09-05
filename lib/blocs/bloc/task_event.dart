part of 'task_bloc.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class AddTasks extends TaskEvent {
  final Tasks tasks;
  const AddTasks({required this.tasks});
   @override
  List<Object> get props => [tasks];
}

class UpdateTasks extends TaskEvent {
  final Tasks tasks;
  const UpdateTasks({required this.tasks});
   @override
  List<Object> get props => [tasks];
}

class DeleteTasks extends TaskEvent {
  final Tasks tasks;
  const DeleteTasks({required this.tasks});
   @override
  List<Object> get props => [tasks];
}
