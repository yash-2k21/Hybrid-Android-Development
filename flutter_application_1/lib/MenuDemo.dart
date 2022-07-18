import 'package:flutter/material.dart';

class MenuDemo extends StatefulWidget {
  const MenuDemo({ Key? key }) : super(key: key);

  @override
  State<MenuDemo> createState() => _MenuDemoState();
}

class _MenuDemoState extends State<MenuDemo> {
  var cities = {"select","mathura","Agra","Delhi","Mumbai","Kolkata","Barsana"};
  var firstCity = "select";

  var choices = {"Home","Function","Goto","Passway","Setting"};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MenuDemo"),
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.help)),
            PopupMenuButton(
              onSelected: (newItem){
                print(newItem);
              },
              itemBuilder: (BuildContext){
              return choices.map((String myChoice){
                return PopupMenuItem(
                  child: Text(myChoice),
                  value:myChoice,
                );
              }).toList();
            })
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "DropDown Menu",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              DropdownButton(
                items: cities.map((String dropDownItems){
                  return DropdownMenuItem(
                    child:Text(dropDownItems,style: TextStyle(fontSize: 20,
                      color:(firstCity==dropDownItems)?Colors.redAccent:Colors.black,
                    ),),
                    value:dropDownItems,
                  );
                }).toList(), 
                onChanged: (String? newItem) { 
                  setState(() {
                    firstCity=newItem!;
                  });
                },
                value:firstCity,
              )
            ],
          ),
        ),
      ),
    );
  }
}