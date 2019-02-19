import 'package:flutter/material.dart';

import './screens/control.dart';


void main() => runApp(VugaApp());

class VugaApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Control(),
      theme: ThemeData(
        primaryColor: Color(0xff004281),
        primaryColorLight: Color(0xffF6F6F6), 
        cursorColor: Color(0xff004281),
        accentColor: Color(0xfff26e24),
        fontFamily: 'Roboto',
      ),
    );
  }
}



