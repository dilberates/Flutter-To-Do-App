import 'package:flutter/material.dart';
import '../model/todo.dart';
class TodosProvider extends ChangeNotifier{
List <Todo> _todos=[
  Todo(
    createdTime: DateTime.now(),
    title: 'English homework',
  ),
  Todo(
    createdTime: DateTime.now(),
    title: 'Birthday',
    description: 'Plan Enes birthday party !!!',
  ),
];

List<Todo> get todos =>_todos.where((todo) => todo.isDone==false).toList();


}