

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
      ),
      body: Text("I am Student of Dinajpur Polytechnic Institute"),

    );
  }


}