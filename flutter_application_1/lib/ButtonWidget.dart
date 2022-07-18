import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text("App Bar"),
        ),
        body: Center(
          child: Container(
            //child: Text("This is ButtonDemo",style: TextStyle(fontSize: 50,color: Colors.amber),),
            child:Column(
              children: [
                  ElevatedButton(
                    onPressed: null, //its makes button non functional
                     child: Text(
                      "Login",
                      style: TextStyle(fontSize: 30),
                    )),
                    TextButton(onPressed: (){
                      print("Button Pressed");
                    }, 
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 25),
                    )),
                    OutlinedButton(onPressed: (){}, 
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 25),
                    )),
                    IconButton(onPressed: (){}, 
                    icon:Icon(
                      Icons.access_alarm,
                      size: 50,
                      color: Colors.blue,
                    )
                    )

              ],
            )
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("Button Pressed");
          },
          child: Icon(Icons.add),
        ),
      ),   
    );
  }
}