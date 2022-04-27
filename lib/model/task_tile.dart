import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

final bool isChecked;
final String taskTitle;
 TaskTile({required this.taskTitle, required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null
      ),),
      trailing: Checkbox(
         activeColor: Colors.purpleAccent,
        onChanged: (bool? value) {  },
        value: isChecked,
      ),
    );
  }
}

//class TaskCheckbox extends StatelessWidget {
 // final bool checkboxState;
 // final Function togglecheckboxState;

 // TaskCheckbox(this.checkboxState, this.togglecheckboxState);
//  @override
 // Widget build(BuildContext context) {
  //  return Checkbox(
   //   activeColor: Colors.purpleAccent,
    //    value: checkboxState,
      //  onChanged: togglecheckboxState,
   //     );
 // }
//}