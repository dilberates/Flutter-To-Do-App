import 'package:flutter/material.dart';
import 'package:to_do/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selecetedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      Container(),
      Container(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white60.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selecetedIndex,
        onTap: (index) => setState(() {
          selecetedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.done, size: 28), label: 'Completed'),
        ],
      ),
      body: tabs[selecetedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.green,
        onPressed: () => showDialog(
            context: context,
            child:AddTodoDialogWidget()
            barrierDismissible: false,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
