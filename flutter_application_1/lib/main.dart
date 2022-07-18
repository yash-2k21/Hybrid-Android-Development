import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Screen2.dart';

import 'ButtonWidget.dart';
import 'MenuDemo.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/Screen0.dart';
import 'Screens/Screen1.dart';

//import 'MyApp.dart';

void main() {
  // runApp(MyApp());
  //runApp(ButtonWidget());
  //runApp(Test());
 // runApp(MenuDemo());
  runApp(
    MaterialApp(
      home:HomeScreen(),
      routes: {
        'S0':(context)=>Screen0(),
        'S1':(context)=>Screen1(),
        'S2':(context)=>Screen2(),
      },
    )
  );
}

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int x=9;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Container(
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                x=2;
              });
              if(x>10){
                print("This is an if statement");
              }
              else{
                print("This is an else Statement");
              }
            }, 
            child: Text("Button")
          ),
        ),
      )
    );
  }
}