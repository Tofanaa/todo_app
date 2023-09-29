import 'package:flutter/material.dart';
import 'package:todo_app/first_onboarding_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Todo App',
        debugShowCheckedModeBanner: false,
        home: FirstOnBoardingPage());
  }
}
