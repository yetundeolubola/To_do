import 'package:flutter/material.dart';
import 'package:to_do/constants/colors.dart';
import 'package:to_do/main.dart';
import 'package:to_do/widget/add_todo.dart';
import 'package:to_do/widget/todo_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [TodoList(), Container()];

    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: kUnSelectedColor,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.input), label: ('Todo')),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_outline), label: ('Completed'))
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: kMainColor,
        child: Icon(Icons.add),
        onPressed: () => showDialog(
            context: context,
            child: AddToDoWidget(),
            barrierDismissible: false),
      ),
    );
  }
}
