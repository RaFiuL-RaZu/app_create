


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
  const HomeActivity({Key? key}) : super(key: key);

  Mysnakbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20),
      primary: Colors.orangeAccent,
      onPrimary: Colors.white,

    );

    return Scaffold(
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed:(){Mysnakbar("This is Button",context);}, child: Text("Text Button")),
          ElevatedButton(onPressed:(){Mysnakbar("This is Button",context);}, child: Text("Elevated Button"),style: buttonStyle,),
          OutlinedButton(onPressed:(){Mysnakbar("This is Button",context);}, child: Text("OutLine Button")),

        ],
      )
    );
  }


}