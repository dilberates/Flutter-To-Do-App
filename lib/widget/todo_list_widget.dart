import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/provider/todos.dart';
import 'package:to_do/model/todo.dart';
import 'package:provider/provider.dart';
import 'package:to_do/widget/todo_widget.dart';

class TodoListWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    final provider=Provider.of<TodosProvider>(context);
    final todos=provider.todos;

    return todos.isEmpty ?
    Center(
      child:Text(
      'No Todos' ,
      style: TextStyle(fontSize: 20),
    ),
    ):

      ListView.separated(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16),
    separatorBuilder: (context,index) => Container(height: 8), //Todolar arası mesafe
    itemCount: todos.length,
      itemBuilder: (context ,index){
      final todo=todos[index];
      return TodoWidget(todo:todo, key: null,);
      },
    );
  }

}
