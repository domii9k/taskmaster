import 'package:flutter/material.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';
import 'package:taskmaster/presentation/pages/planned_page.dart';
import 'package:taskmaster/presentation/pages/tasks_of_the_day.dart';
import 'package:taskmaster/presentation/pages/user_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskMaster',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorsRepository().white),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const TasksOfTheDay(),
        '/favorites' : (context) => const TasksOfTheDay(), //futuramente será a página de favoritos
        '/planned' : (context) => const PlannedPage(),
        '/alltasks' : (context) => const TasksOfTheDay(), //futuramente será a página de todas as tasks
        '/shoppinglist' : (context) =>  const TasksOfTheDay(), //futuramente será a página de lista de compras
        '/jobtasks'  : (context) => const TasksOfTheDay(),  //futuramente será a página de tasks do trabalho
        '/userconfig' : (context) => const UserConfig(),
      },
    );
  }
}
