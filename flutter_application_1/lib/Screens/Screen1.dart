import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Screen1"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: (
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (conetext){
                  return Screen2();
                }));
              }, 
              child: Text("Goto Screen-2",style: TextStyle(fontSize: 30),)
            )
          ),
        ),
      ),
    );
  }
}