


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
      debugShowCheckedModeBanner: false,
      home:HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget{
   HomeActivity({Key? key}) : super(key: key);

  Mysnakbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    maximumSize: Size(double.infinity,60)
  );

  @override
  Widget build(BuildContext context) {


    return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'First Name')),),
        Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Last Name')),),
        Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Email Address')),),
        Padding(padding: EdgeInsets.all(20),child: ElevatedButton(onPressed: (){},child: Text("Submit Button"),style: buttonStyle,)),

      ],
    ),

    );
  }


}