import 'package:app_mostri/util/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

      body: ListView(

        children: [
          ToDoTile(
            taskName: "Fai qualcosa",
            taskCompleted: true,
            onChanged:  (p0) {},
          ),
          ToDoTile(
            taskName: "Fai qualcosa",
            taskCompleted: true,
            onChanged:  (p0) {},
          ),
          ToDoTile(
            taskName: "Fai qualcosa",
            taskCompleted: true,
            onChanged:  (p0) {},
          ),
        ],

      ),
    );
  }
}