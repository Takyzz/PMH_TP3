import 'package:flutter/material.dart';
import 'package:navigation/pages/firstpage.dart';
import 'package:navigation/pages/secondpage.dart';

class Homepage extends StatelessWidget{
  const Homepage({Key? key}) : super(key: key);

@override 
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.deepOrange[300],
    ),

    drawer: Drawer(
      child: Container(
        color: Colors.deepOrange[100],
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'NAVIGATION',
                  style: TextStyle(fontSize: 35),
                  )),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 1',
                  style: TextStyle(fontSize: 25),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstPage()));
                },
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 2',
                  style: TextStyle(fontSize: 25),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SecondPage()));
                },
              )

            ],
         ),
       ),
     ),
   );
  }
}