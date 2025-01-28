
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
  const HomeActivity({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length:8,
        child:Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.person),text: "Profile",),
                Tab(icon: Icon(Icons.contacts),text: "Contact",),
                Tab(icon: Icon(Icons.email),text: "Email",),
                Tab(icon: Icon(Icons.message),text: "Message",),
                Tab(icon: Icon(Icons.call),text: "Calls",),
                Tab(icon: Icon(Icons.search),text: "Search",),
                Tab(icon: Icon(Icons.people),text: "People",)
              ],
            ),
          ),
        )

    );
  }

}