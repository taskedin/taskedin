import 'package:flutter/material.dart';

class TodoTileElement extends StatelessWidget {
  const TodoTileElement({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    this.onChange,
  });

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 0.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChange,
              // TODO: add the color theme
            ),
            Text(taskName),
          ],
        ),
      ),
    );
  }
}
