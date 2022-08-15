import 'package:flutter/material.dart';
import 'package:untitled1/screen/login.dart';

void main() =>runApp( MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Color(0xff00B0FF),
      ),
      home: loginScreen() ,
    );

  }
}

