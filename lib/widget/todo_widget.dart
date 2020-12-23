import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/constants/colors.dart';
import 'package:to_do/model/todo_field_model.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;

  const TodoWidget({Key key, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Slidable(
            actionPane: SlidableDrawerActionPane(),
            key: Key(todo.id),
            actions: [
              IconSlideAction(
                color: Colors.black,
                caption: 'Edit',
                icon: Icons.edit,
                onTap: () {},
              ),
            ],
            secondaryActions: [
              IconSlideAction(
                color: kUnSelectedColor,
                caption: 'Delete',
                icon: Icons.delete,
                onTap: () {},
              )
            ],
            child: buildTodo(context)),
      );

  Widget buildTodo(BuildContext context) => Container(
        padding: EdgeInsets.all(5),
        color: Colors.white,
        child: Row(
          children: [
            Checkbox(
              activeColor: Theme.of(context).primaryColor,
              checkColor: Colors.black,
              value: todo.isDone,
              onChanged: (_) {},
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(todo.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kMainColor,
                          fontSize: 20)),
                  if (todo.description.isNotEmpty)
                    Container(
                      child: Text(
                        todo.description,
                        style: TextStyle(fontSize: 20, height: 2),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      );
}
