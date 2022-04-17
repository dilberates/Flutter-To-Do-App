import 'package:flutter/material.dart';

class AddTodoDialogWidget extends StatefulWidget{
  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidget();
  }

  class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget>{
  final _formKey =GlobalKey<FormState>();
  String title='';
  String description='';

  @override
  Widget build(BuildContext context)  => AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add Todo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 8),
        TodoFormWidget(
          

        ),
      ],
    ),
  );

}