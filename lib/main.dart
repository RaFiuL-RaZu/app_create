
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
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData(primarySwatch: Colors.teal),
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
        title: Text("Inovation New App"),
        centerTitle: true,
        elevation: 10,
        toolbarOpacity: 0.9,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: (){Mysnakbar("Search Option",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){Mysnakbar("Search Option",context);}, icon: Icon(Icons.phone)),
          IconButton(onPressed: (){Mysnakbar("Search Option",context);}, icon: Icon(Icons.email)),

        ],
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){Mysnakbar("Action Button Is On",context);},
      ),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        onTap: (int index){
          if(index==0){
            Mysnakbar("This is Home",context);
          }
          if(index==1){
            Mysnakbar("This is Contact",context);
          }
          if(index==2){
            Mysnakbar("This is Profile",context);
          }
        },
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(

                decoration: BoxDecoration(color: Colors.teal),
                accountName: Text("RaFiuL RaZu"),
                accountEmail: Text("rafiul102621@gmail.com"),
                currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc5Wy-m29S0enI_cA5-e3qwsa7nim26luJAQ&s"),
              ),
            ),

            ListTile(title: Text("My Profile"),leading: Icon(Icons.person),),
            ListTile(title: Text("Claim Premium"),leading: Icon(Icons.person),),
            ListTile(title: Text("History"),leading: Icon(Icons.person),),
            ListTile(title: Text("My Visiting Card"),leading: Icon(Icons.card_travel),),
            ListTile(title: Text("Jobs"),leading: Icon(Icons.contacts_sharp),),
            ListTile(title: Text("Share"),leading: Icon(Icons.share),),
            ListTile(title: Text("Feedback"),leading: Icon(Icons.person),),
            ListTile(title: Text("Rate Us"),leading: Icon(Icons.star),),
            ListTile(title: Text("Facebook Page"),leading: Icon(Icons.person),),
            ListTile(title: Text("About US"),leading: Icon(Icons.person),),
          ],
        ),
      ),
      body: Container(
        child: Text("Hello RaFiuL RaZu"),
        height: 400,
        width: 400,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.fromLTRB(40, 80, 60, 40),
        decoration: BoxDecoration(
            color: Colors.teal,
        border: Border.all(color: Colors.black, width: 2)
        ),
      ),
    );
  }

}