import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/home.dart';
import 'package:to_do/my_theme_data.dart';

void main() {
  runApp(Myapp ());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: homePage.routeName,
      routes :{
        homePage.routeName:(context)=>homePage(),
      },
      theme: MythemeData.lighttheme,

    );
  }
}
