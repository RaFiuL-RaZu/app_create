
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fragment/CallFrag.dart';
import 'Fragment/ContactFrag.dart';
import 'Fragment/EmailFrag.dart';
import 'Fragment/HomeFrag.dart';
import 'Fragment/MessageFrag.dart';
import 'Fragment/PeopleFrag.dart';
import 'Fragment/ProfileFrag.dart';
import 'Fragment/SearchFrag.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"),),),
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name"),),),
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email Address"),),),
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Password Name"),),)

        ],
      ),
    );
  }

}

