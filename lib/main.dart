import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
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
        child: Container(
          height: 200,width: 200,
          color: Colors.amber,
          child:Icon(Icons.person,size: 50,color: Colors.white,)
        ),
      ),
    ),
  ));
}
