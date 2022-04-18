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

void addTodo(Todo todo){
  _todos.add(todo);
  notifyListeners();
}

void removeTodo(Todo todo){
  _todos.remove(todo);
  notifyListeners();
}
bool toogleTodoStatus(Todo todo)
{
 todo.isDone=!todo.isDone;
 notifyListeners();
 return todo.isDone;
}
}