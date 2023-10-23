import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

// class TaskTile extends StatefulWidget {
//   final String taskTitle;
//   final bool isChecked;
//   TaskTile({required this.taskTitle, required this.isChecked});
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 32.0),
//       child: CheckboxListTile(
//         title: Text(
//           widget.taskTitle,
//           style: TextStyle(
//             fontSize: 18,
//             decoration: widget.isChecked ? TextDecoration.lineThrough : TextDecoration.none,
//           ),
//         ),
//         value: widget.isChecked,
//         onChanged: (value) {
//           setState(() {
//             widget.isChecked = value!;
//           });
//         },
//       ),
//     );
//   }
// }

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback,
      required this.longPressCallback});
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        longPressCallback();
      },
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          checkboxCallback(value);
        },
      ),
    );
  }
}
