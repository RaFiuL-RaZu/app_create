


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
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
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

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Inovation New App"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_enhance)),
          IconButton(onPressed: (){}, icon: Icon(Icons.adb_sharp))
        ],

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){},

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
         BottomNavigationBarItem(icon:Icon(Icons.home),label: "HOme"),
          BottomNavigationBarItem(icon:Icon(Icons.contacts),label: "Contact"),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: "Profile"),
        ],
        onTap: (int index){
          if(index==0) {
            Mysnakbar("Home Button", context);
          }
          if(index==1){
            Mysnakbar("Contact Button",context);
          }
          if(index==2){
            Mysnakbar("Profile Button",context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("RaFiuL Razu")),
            ListTile(title: Text("Home")),
            ListTile(title: Text("Home")),
            ListTile(title: Text("Home")),
          ],
        ),
      ),
    );
  }


}