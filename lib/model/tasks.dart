
class Tasks {
  final String name;
  bool isDone = false;
  final DateTime createdTime;
  Tasks({required this.name, required this.isDone, required this.createdTime});



//   void toggleDone(){
//     isDone = !isDone;
//   }
}

class TasksField {
  static const createdTime = 'createdTime';
}