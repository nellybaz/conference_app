import 'package:flutter/material.dart';
import '../components/bottom_nav.dart';

import './speakers.dart';
import './bookmarks.dart';
import './home.dart';
import '../components/participants_listView.dart';



class Participants extends StatefulWidget{
   @override
   State<StatefulWidget> createState() {
return _ParticipantsState();
}
}
class _ParticipantsState extends State<Participants>{
  
  changeScreen(x){
          switch (x) {
          case 0:
              
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
            break;

            case 1:
              
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Bookmarks()));
            break;

            case 2:
              
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Speakers()));
            break;

            case 3:
              
            // Navigator.push(context, MaterialPageRoute(builder: (context)=> Participants()));
            break;
          default:
        }
    }
    int screenIndex = 3;


    
   @override
   Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: Hero(
       tag:  "app_bottom_nav",
        child: BottomNav(screenIndex: screenIndex, changeScreen: changeScreen,),
     ),
     appBar: AppBar(
      title: Text("Participants", style: TextStyle(
       fontSize: 16.0)),
      leading: IconButton(
         icon: Icon(Icons.arrow_back_ios),
         onPressed: (){
           Navigator.pop(context);
         },

       ),
     ),
     body: Padding(
       padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
       child: ListView(
         children: [ParticipantsListView(listItemNumber: 10,)],
       ),
     )
 
   );
}
}