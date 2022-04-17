import 'package:flutter/material.dart';

class TodoFromWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSavedTodo;

  const TodoFromWidget({
    required Key key,
    this.title = '',
    this.description = '',
    required this.onChangedDescription,
    required this.onChangedTitle,
    required this.onSavedTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildTitle(),
            SizedBox(height: 8,)
          ],
        ),
      );

  Widget buildTitle() => TextFormField(
    maxLines: 1,
        initialValue: title,
        onChanged: onChangedTitle,
        validator: (title){
          if(title!.isEmpty)
            {
              return 'The title cannot be empty';
            }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Title',
        ),
      );
}
