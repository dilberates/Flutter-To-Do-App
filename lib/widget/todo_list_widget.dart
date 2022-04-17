import 'package:flutter/material.dart';
import 'package:to_do/provider/todos.dart';
import 'package:to_do/model/todo.dart';
import 'package:provider/provider.dart';

class TodoListWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return TodoWidget(
      todo:Todo(
        createdTime: DateTime.now(),
        title: 'Dilber homework',
      ),
    );
  }

}
