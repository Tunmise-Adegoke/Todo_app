import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/blocs/bloc/task_state.dart';

import 'package:todo_app/screens/add_tasks.dart';

import '../blocs/bloc/task_bloc.dart';
import '../model/tasks.dart';

class TasksScreen extends StatefulWidget {
  TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  void initState() {
    TextEditingController _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(builder: (context, state) {
      List<Tasks> allTasks = state.allTasks;
      return Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Colors.purpleAccent,
                  Colors.pinkAccent,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30, top: 60),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        child: ImageIcon(
                          AssetImage('assets/images/clipboard.png'),
                          size: 30,
                          color: Colors.purple,
                        ),
                        backgroundColor: Colors.white,
                        radius: 35,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Todo',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ListView.builder(
                          itemCount: allTasks.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Dismissible(
                              key: Key(allTasks[index].title),
                              onDismissed: (direction) {
                                context
                                    .read<TaskBloc>()
                                    .add(DeleteTasks(tasks: allTasks[index]));
                              },
                              child: ListTile(
                                leading: Text(
                                  allTasks[index].title,
                                  style: TextStyle(
                                      decoration: allTasks[index].isDone!
                                          ? TextDecoration.lineThrough
                                          : null),
                                ),
                                trailing: Checkbox(
                                  onChanged: (value) {
                                    context.read<TaskBloc>().add(
                                        UpdateTasks(tasks: allTasks[index]));
                                  },
                                  value: allTasks[index].isDone,
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.purpleAccent,
            child: const Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                context: context,
                builder: (context) {
                  return SizedBox(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Add Tasks',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.purpleAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: TextField(
                            controller: _textEditingController,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.pinkAccent,
                                    Colors.purpleAccent
                                  ]),
                              borderRadius: BorderRadius.circular(15)),
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<TaskBloc>().add(
                                    AddTasks(
                                      tasks: Tasks(
                                        title: _textEditingController.text,
                                        isDeleted: false,
                                        isDone: false,
                                      ),
                                    ),
                                  );
                            },
                            child: const Text('Add Tasks'),
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent,
                              onPrimary: Colors.white,
                              elevation: 0,
                              minimumSize: const Size(200, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }),
      );
    });
  }
}
