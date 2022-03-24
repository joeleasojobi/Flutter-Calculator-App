import 'package:calculator_sidenav_app/Screens/mydrawer.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("CALCULATOR")),
        ),
        drawer: MyDrawer(),
        body: Container(),
        ),
      );
  }
}
