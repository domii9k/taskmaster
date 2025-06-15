import 'package:flutter/material.dart';

class TasksOfTheDay extends StatefulWidget {
  const TasksOfTheDay({super.key});

  @override
  State<TasksOfTheDay> createState() => _TasksOfTheDayState();
}

class _TasksOfTheDayState extends State<TasksOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tasks of the day')),
      body: Center(child: Text('Tasks of the day')),
    );
  }
}
