import 'package:flutter/material.dart';
import 'package:taskedin/taskedin_home_page/taskedin_home_page.dart';

void main() {
  runApp(const TaskedIn());
}

class TaskedIn extends StatelessWidget {
  const TaskedIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskedIn',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TaskedinHomePage(title: 'TaskedIn - an ultimate to-do task manager for everyone.'),
    );
  }
}
