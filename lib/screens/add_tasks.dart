// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:todo_app/blocs/bloc/task_bloc.dart';

// import '../model/tasks.dart';

// class AddTaskSheet extends StatefulWidget {
  
//   const AddTaskSheet({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _AddTaskSheetState createState() => _AddTaskSheetState();
// }

// final TextEditingController _textEditingController = TextEditingController();

// class _AddTaskSheetState extends State<AddTaskSheet> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           const Text(
//             'Add Tasks',
//             style: TextStyle(
//               fontFamily: 'Montserrat',
//               color: Colors.purpleAccent,
//               fontWeight: FontWeight.bold,
//               fontSize: 25,
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 30, right: 30),
//             child: TextField(
//               controller: _textEditingController,
//               decoration: const InputDecoration(
//                 border: UnderlineInputBorder(),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Container(
//             decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [Colors.pinkAccent, Colors.purpleAccent]),
//                 borderRadius: BorderRadius.circular(15)),
//             child: ElevatedButton(
//               onPressed: () {
//                 context.read<TaskBloc>().add(AddTasks(tasks: allTasks));
//               },
//               child: const Text('Add Tasks'),
//               style: ElevatedButton.styleFrom(
//                 textStyle: const TextStyle(
//                   fontFamily: 'Montserrat',
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 25,
//                 ),
//                 primary: Colors.transparent,
//                 onSurface: Colors.transparent,
//                 shadowColor: Colors.transparent,
//                 onPrimary: Colors.white,
//                 elevation: 0,
//                 minimumSize: const Size(200, 50),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15)),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
