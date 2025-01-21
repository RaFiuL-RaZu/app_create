

import 'dart:html';

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
      theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        home: HomeActivity()
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
        title: Text("Inventory New App"),
        centerTitle: true,
        elevation: 10,
        toolbarOpacity: 0.9,
        toolbarHeight: 60,
        titleSpacing: 40,
        actions: [
          IconButton(onPressed: (){Mysnakbar("This is Search option",context);}, icon:Icon(Icons.search)),
          IconButton(onPressed: (){Mysnakbar("This is Settings option",context);}, icon:Icon(Icons.settings)),
          IconButton(onPressed: (){Mysnakbar("This is comment option",context);}, icon:Icon(Icons.comment)),
          IconButton(onPressed: (){Mysnakbar("This is message option",context);}, icon:Icon(Icons.message)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){Mysnakbar("Action Button Is on.",context);},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Profile"),
        ],
        onTap: (int index){
          if(index==0){
            Mysnakbar("This is Home Menu",context);
          }
          if(index==1){
            Mysnakbar("This is Contact Menu",context);
          }
          if(index==2){
            Mysnakbar("This is Profile Menu",context);
          }

        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(

                  accountName: Text("RaFiuL Islam"),
                  accountEmail: Text("rafi102621@gmail.com"),
                  currentAccountPicture: Image.network("https://cdn.iconscout.com/icon/free/png-256/free-flutter-logo-icon-download-in-svg-png-gif-file-formats--programming-language-coding-development-logos-icons-1720090.png"),
                )
            ),


            ListTile(leading:Icon(Icons.home),title: Text("Home")),
            ListTile(leading:Icon(Icons.person),title: Text("Profile")),
            ListTile(leading:Icon(Icons.contact_mail),title: Text("Contact")),
            ListTile(leading:Icon(Icons.phone),title: Text("Phone")),
            ListTile(leading:Icon(Icons.email),title: Text("Email")),
          ],
        ),
      ),
    );
  }

}
