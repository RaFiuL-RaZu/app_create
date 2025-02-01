import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Flutter",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            letterSpacing: 5,
          ),
        ),
        actions: [Icon(Icons.notifications), SizedBox(width: 10)],
      ),
      body:Center(
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.only(left: 10,right: 15,top: 20,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color:Colors.red,width: 5),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),

            ),

          ),
        )
      ),
    ),
  ));
}
