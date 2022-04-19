import 'package:flutter/material.dart';
import 'package:to_do/page/home_page.dart';
import 'package:provider/provider.dart';
import 'package:to_do/provider/todos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'TODO APP';

  @override
  Widget build(BuildContext context) =>  ChangeNotifierProvider(
    create: (context) => TodosProvider(),
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: Color(0xffABB2B9),
        ),
        home: HomePage(),
      ),
  );
}
