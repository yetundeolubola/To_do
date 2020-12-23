import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/constants/colors.dart';
import 'package:to_do/provider/todo_provider.dart';
import 'package:to_do/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'To Do';
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MaterialApp(
        title: title,
        theme: ThemeData(
            primaryColor: kMainColor, scaffoldBackgroundColor: Colors.white),
        home: HomePage(),
      ));
}
