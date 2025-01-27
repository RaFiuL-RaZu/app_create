


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

    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      primary: Colors.teal
    );

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
            DrawerHeader(child: Text("RaFiul Razu"),),
            ListTile(title: Text("Home"),leading: Icon(Icons.home),),
            ListTile(title: Text("Profile"),leading: Icon(Icons.person),),
            ListTile(title: Text("Calls"),leading: Icon(Icons.call),),
            ListTile(title: Text("Message"),leading: Icon(Icons.message),),
          ],
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"),),),
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name"),),),
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email Address"),),),
          Padding(padding: EdgeInsets.all(10),child: ElevatedButton(onPressed: (){},child: Text("Submit Button"),style: buttonStyle,)),


        ],
      ),
    );
  }


}