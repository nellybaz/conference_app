import 'package:flutter/material.dart';

class SessionDetails extends StatelessWidget{
   @override
   Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Details Page", style: TextStyle(
         fontSize: 14.0
       ),),
     ),
     body: Center(
     child: Text('Session single'),
   ),
   );
}
}