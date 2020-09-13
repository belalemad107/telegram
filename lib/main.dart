import 'package:flutter/material.dart';
import 'package:telegram/loginScreen1.dart';
import 'package:telegram/loginScreen2.dart';
import 'package:telegram/loginScreen3.dart';
import 'package:telegram/loginScreen4.dart';
import 'package:telegram/homeScreen1.dart';

void main(){
 runApp(MyApp(),);
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen1(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color.fromRGBO(188, 188, 188,1),
        primaryColor: Color.fromRGBO(67, 163, 220,1),
        canvasColor: Color.fromRGBO(249, 253, 255,1),
        errorColor: Color.fromRGBO(81, 125, 162,1),
      ),
    );
  }
}
