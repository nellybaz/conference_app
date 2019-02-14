import 'package:flutter/material.dart';
import './auth/login.dart';
import './home.dart';

class Control extends StatefulWidget{
  
  //checking logged in users
  bool isLoggedIn = false;
  @override
  State<StatefulWidget> createState() {
   
    return _ControlState();
  }
}


class _ControlState extends State<Control>{
  @override
  Widget build(BuildContext context) {
    
    return  widget.isLoggedIn ? Home() : Login();
  }

}



