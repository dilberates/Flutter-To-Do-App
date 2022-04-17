import 'package:flutter/material.dart';
import 'package:to_do/main.dart';

import '../widget/add_todo_dialog_widget.dart';
import '../widget/todo_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selecetedIndex = 0; //0 ilk seçeneğin seçili olacağını belirtir.

  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(), //to-do page sayfası için
      Container(), //compledet page sayfası için
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
        onTap: (index) => setState(() { //BottomNB da gezinmek için
          selecetedIndex = index; //Indexi değiştirmek için.
        }),
        items: [
          BottomNavigationBarItem( //gezinme çubuğu
            icon: Icon(Icons.fact_check_outlined),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.done, size: 28),
              label: 'Completed'
          ),
        ],
      ),
      body: tabs[selecetedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder( //şeklini değiştiriyoruz
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.green,
        onPressed: () => showDialog( //ekel butonuna tıklayınca
            context: context,
            //child:AddTodoDialogWidget(),
            barrierDismissible: false,
            builder: (BuildContext context) {  },
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
