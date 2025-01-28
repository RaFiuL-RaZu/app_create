
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
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(20),child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is From Home To Profile")));
          }, child:Text("Go Profile")),),
          Padding(padding: EdgeInsets.all(20),child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is From Home To Contact")));
          }, child:Text("Go Contact")),)

        ],
      ),
      
    );
  }

}

class Activity1 extends StatelessWidget{

  String msg;
  Activity1(
      this.msg,
      {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body:Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This Is From Profile To Contact")));
        },child: Text("Go Contact"),),

      ),
    );
  }

}

class Activity2 extends StatelessWidget {

  String msg;
  Activity2(
      this.msg,
      {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body:Center(
        child: Text("This is Contact"),
      ),
    );
  }
}
