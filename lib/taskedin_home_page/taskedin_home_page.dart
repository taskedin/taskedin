import 'package:flutter/material.dart';

class TaskedinHomePage extends StatelessWidget {
  const TaskedinHomePage({super.key, required this.title});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(title),
        elevation: 1,
      ),
      body: ListView(
        children: const [
          Text('data'),
        ],
      ),
    );
  }
}