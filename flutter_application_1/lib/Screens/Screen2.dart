import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Screen-2"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Container(
          child: (
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Goto Screen-1",style: TextStyle(fontSize: 30),)
            )
          ),
        ),
      ),
    );
  }
}