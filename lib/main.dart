
import 'dart:html';

import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        home: HomeActivity()
    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({Key? key}) : super(key: key);

  Mysnakbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("New Invention App"),
        centerTitle: true,
        titleSpacing: 40,
        toolbarOpacity: 0.9,
        toolbarHeight: 60,
        elevation: 10,
        actions: [
          IconButton(onPressed: (){Mysnakbar("Search box",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){Mysnakbar("Settings System",context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){Mysnakbar("Email Box",context);}, icon: Icon(Icons.email)),
          IconButton(onPressed: (){Mysnakbar("Phone Call",context);}, icon: Icon(Icons.phone)),
          IconButton(onPressed: (){Mysnakbar("Comments Section",context);}, icon: Icon(Icons.comment)),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){Mysnakbar("Action Button Is on.",context);},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Profile"),

        ],
      ),

    );
  }

}
