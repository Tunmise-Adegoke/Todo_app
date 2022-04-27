import 'package:flutter/material.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  _AddTasksState createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Add Tasks',
            style:  TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.purpleAccent,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.pinkAccent,
                        Colors.purpleAccent
                      ]
                  ),
                borderRadius: BorderRadius.circular(15)
              ),
              child: ElevatedButton
                (onPressed: () {},
                  child: Text('Add Tasks'),
              style: ElevatedButton.styleFrom(
                textStyle:  TextStyle(
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
                  minimumSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
              ),),
            ),
          ],
        ),
    );
  }
}
