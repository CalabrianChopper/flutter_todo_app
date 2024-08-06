import "package:flutter/material.dart";

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() =>  ToDoPageState();
}

class ToDoPageState extends State<ToDoPage> {

  //greeting message
  String greetingMessage = "";

  // text editing controller
  TextEditingController myController = TextEditingController();

  // greet user method
  void greetUser(){
    setState(() {
      greetingMessage = "Hello, " + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //greeting Message
              Text(greetingMessage),
          
              // textfield
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name"
                ),
              ),
          
              // button
              ElevatedButton(
                onPressed: greetUser, 
                child: Text("Tap")
              ),
          
          
            ],
          ),
        ),
      ),
    );
  }
}