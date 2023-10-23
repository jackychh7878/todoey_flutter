import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  AddTaskScreen({required this.addTaskTitleCallback});

  final Function addTaskTitleCallback;
  late String newTaskTitle;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, color: Colors.lightBlueAccent),
            ),
            TextField(
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              autofocus: true,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent, width: 4)
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent, width: 4)
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent, width: 4)
                ),
              ),
            ),
            SizedBox(height: 16),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
              ),
              onPressed: () {
                addTaskTitleCallback(newTaskTitle);
                },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
