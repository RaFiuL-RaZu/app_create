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
      body: Center(
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color:Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color:Colors.green,
            ),
            Card(
              color: Colors.blue,
              child: SizedBox(
                height: 100,
                width: 100,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color:Colors.red,
            )
          ],
        ),
      )
    ),
  ));
}
