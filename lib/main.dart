

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){

  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

   return MaterialApp(
      theme: ThemeData( primarySwatch: Colors.green ),
       darkTheme: ThemeData(primarySwatch: Colors.amber),
       debugShowCheckedModeBanner: false,
       home:HomeActivity()

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
        title: Text("Inventory App"),
        titleSpacing: 40,
        centerTitle: true,
        toolbarHeight: 40,
        toolbarOpacity: 0.9,
        elevation: 10,
        backgroundColor: Colors.indigoAccent,
        actions: [
          IconButton(onPressed:(){Mysnakbar("I am Comments",context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed:(){Mysnakbar("I am Settings",context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed:(){Mysnakbar("I am Email",context);}, icon: Icon(Icons.email)),
          IconButton(onPressed:(){Mysnakbar("I am Phone",context);}, icon: Icon(Icons.phone)),
        ],
      ),
      body: Text("I am Student of Dinajpur Polytechnic Institute"),

    );
  }


}