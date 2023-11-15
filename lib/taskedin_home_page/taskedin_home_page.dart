import 'package:flutter/material.dart';
import 'package:taskedin/taskedin_home_page/element/todo_tile_element.dart';

class TaskedinHomePage extends StatefulWidget {
  const TaskedinHomePage({super.key, required this.title});

  final String title;

  @override
  State<TaskedinHomePage> createState() => _TaskedinHomePageState();
}

class _TaskedinHomePageState extends State<TaskedinHomePage> {
  
  List toDoList = [
    ['Task One', false],
    ['Task Two', false],
    ['Task Three', false],
  ];

  void onChange(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title),
        elevation: 1,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTileElement(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChange: (value) => onChange(value, index),
          );
        },
      ),
    );
  }
}
