import 'package:flutter/material.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';
import 'package:taskmaster/presentation/pages/login_page.dart';
import 'package:taskmaster/presentation/pages/register_page.dart';

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
        '/': (context) => const RegisterPage(),
        '/favorites' : (context) => const LoginPage(),
        '/planned' : (context) => const LoginPage(),
        '/alltasks' : (context) => const LoginPage(),
        '/shoppinglist' : (context) =>  const LoginPage(),
        '/jobtasks'  : (context) => const LoginPage(),
      },
    );
  }
}
