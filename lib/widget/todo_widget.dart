import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/model/todo.dart';
class TodoWidget extends StatelessWidget{
  final Todo todo;

  const TodoWidget({
    required this.todo,
    required Key key,
}) :super (key: key);
  @override
  Widget build(BuildContext context) => Row(
  children: [
    Checkbox(
      activeColor: Theme.of(context).primaryColor,
      checkColor: Colors.white,
      value: todo.isDone,
      onChanged: (){},
    ),
    const SizedBox(width: 20),
    Expanded(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
                fontSize: 22,
              ),
            ),
            if(todo.description.isNotEmpty)
              Container(
                margin: EdgeInsets.only(top: 4),
                child: Text(
                  todo.description,
                  style: TextStyle(fontSize: 20,height: 1.5),
                ),
              )
          ],
        ),
    ),
  ],

  );



}