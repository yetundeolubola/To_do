import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:to_do/model/todo_field_model.dart';

class TodoProvider extends ChangeNotifier {
  List<Todo> _todo = [
    Todo(
        createdTime: DateTime.now(),
        title: 'Create Time to Write',
        description: '''
    -Books
    -Novel
    -WriteUp
    -Inspiration
    '''),
    Todo(
        createdTime: DateTime.now(),
        title: 'Create Time to Read',
        description: '''
    -Books
    -Novel
    -WriteUp
    -Inspiration
    '''),
    Todo(
        createdTime: DateTime.now(),
        title: 'Some Time to cook',
        description: '''
    -Rice
    -Beans
    -Egusi
    -PoundedYam
    '''),
    Todo(
        createdTime: DateTime.now(),
        title: 'Some Hours for exercise',
        description: '''
    -Jogging
    -Running
    -Squats
    -Scissors
    '''),
    Todo(createdTime: DateTime.now(), title: 'Some Time for Fun fun')
  ];
  List<Todo> get todos => _todo.where((todo) => todo.isDone == false).toList();
}
