import 'dart:html';

import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: Text("My First App",style: TextStyle(color:Colors.black),),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
        body:Center(
          child: Container(
            child: Text("This is My App", style: TextStyle(fontSize: 50,color: Colors.blue),),
          ),
        ),
        backgroundColor: Colors.pink,
      )
    );
  }
}