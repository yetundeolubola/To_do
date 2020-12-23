import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/constants/colors.dart';

class ToDoFormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSavedToDo;

  const ToDoFormWidget(
      {Key key,
      this.title = '',
      this.description = '',
      @required this.onChangedTitle,
      @required this.onChangedDescription,
      @required this.onSavedToDo})
      : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildTitle(),
            SizedBox(height: 10),
            buildDescription(),
            SizedBox(height: 15),
            buildButton()
          ],
        ),
      );

  Widget buildTitle() => TextFormField(
        maxLines: 1,
        initialValue: title,
        onChanged: onChangedTitle,
        validator: (title) {
          if (title.isEmpty) {
            return 'Title cannot be Empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Tittle',
        ),
      );

  Widget buildDescription() => TextFormField(
        maxLines: 3,
        initialValue: description,
        onChanged: onChangedDescription,
        validator: (description) {
          if (description.isEmpty) {
            return 'Description cannot be Empty';
          }
          return null;
        },
        decoration: InputDecoration(
            border: UnderlineInputBorder(), labelText: 'Description'),
      );

  Widget buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kUnSelectedColor)),
          onPressed: onSavedToDo,
          child: Text('Save'),
        ),
      );
}
