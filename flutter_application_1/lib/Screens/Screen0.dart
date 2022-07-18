import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Screen1.dart';

class Screen0 extends StatelessWidget {
  const Screen0({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Main Screen"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          child: (
            ElevatedButton(
              onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (conetext){
                    return Screen1();
                  }));
                },
              child: Text("Goto Screen-1"))
          ),
        ),
      ),
    );
  }
}