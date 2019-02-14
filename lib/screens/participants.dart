import 'package:flutter/material.dart';

class Participants extends StatefulWidget{
   @override
   State<StatefulWidget> createState() {
return _ParticipantsState();
}
}
class _ParticipantsState extends State<Participants>{
   @override
   Widget build(BuildContext context) {
   return Center(
     child: Text('Participants page'),
   );
}
}