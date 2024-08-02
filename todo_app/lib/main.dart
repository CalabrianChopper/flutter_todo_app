import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 30, 75, 5),
        appBar: AppBar(
          title: Text("Questa è una app bar"),
          backgroundColor: Colors.lightGreen,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions:[
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.logout),
              )
            ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              height: 200,
              width: 200,
              color: Colors.lightGreen,
            ),

            Container(
              height: 200,
              width: 200,
              color: Colors.lightGreen[400],
            ),

            Container(
              height: 200,
              width: 200,
              color: Colors.lightGreen[200],
            ),

          ],
          // child: Container(
          //   height: 300,
          //   width: 300,
          //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          //   decoration: BoxDecoration(
          //     color: Color.fromARGB(255, 17, 182, 58),
          //     borderRadius: BorderRadius.circular(20),
          //   ),
            // child: Text(
            //   "Ciao sono Francesco",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 28,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // child: Icon(
            //   Icons.favorite,
            //   color: Colors.amber,
            //   size: 64,
            // ),
          // ),
        ),
      ),
    );
  }
}