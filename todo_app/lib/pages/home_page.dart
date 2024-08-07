import 'package:app_mostri/util/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //Lista di ToDo tasks
  List toDoList = [
    ("Make tutorial", false),
    ("Un altro task", false),
  ];

  //checkbox premuto
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 77, 77, 77),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          "Memo QMT",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
      ),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index){
          return ToDoTile(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1], 
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },


      ),
    );
  }
}