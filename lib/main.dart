
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fragment/CallFrag.dart';
import 'Fragment/ContactFrag.dart';
import 'Fragment/EmailFrag.dart';
import 'Fragment/HomeFrag.dart';
import 'Fragment/MessageFrag.dart';
import 'Fragment/PeopleFrag.dart';
import 'Fragment/ProfileFrag.dart';
import 'Fragment/SearchFrag.dart';

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
                Tab(text: "Home",),
                Tab(text: "Profile",),
                Tab(text: "Contact",),
                Tab(text: "Email",),
                Tab(text: "Message",),
                Tab(text: "Calls",),
                Tab(text: "Search",),
                Tab(text: "People",)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFrag(),
              ProfileFrag(),
              ContactFrag(),
              EmailFrag(),
              MessageFrag(),
              CallFrag(),
              SearchFrag(),
              PeopleFrag()

            ],
          ),
        )

    );
  }

}