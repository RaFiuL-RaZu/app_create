
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
      home: HomeActivity(),);
  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold();
  }


}