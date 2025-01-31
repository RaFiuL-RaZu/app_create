

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(
    MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Text("Hi, I Am RaFiuL"),
        ),
        backgroundColor: Colors.deepPurple,
      ),
    )
  );
}