import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFrag extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Center(
  child: Image.network("https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdXB3azYxNzkxOTM5LXdpa2ltZWRpYS1pbWFnZS1rb3dic3dsMC5qcGc.jpg"),

      ),
    );
  }
}