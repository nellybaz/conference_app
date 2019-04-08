import 'package:flutter/material.dart';
import './home.dart';
import './participants.dart';
import './speakers.dart';


class AppNotification extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AppNotificationState();
  }
}

class _AppNotificationState extends State<AppNotification> {
  int screenIndex = 1;
  changeScreen(x){
          switch (x) {
          case 0:
              
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
            break;

            case 1:
              

            break;

            case 2:
              
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Speakers()));
            break;

            case 3:
              
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Participants()));
            break;
          default:
        }
    }
    
   @override
   Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: Hero(
        tag: "app_bottom_nav",
        child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 22.0,color: screenIndex == 0 ? Theme.of(context).accentColor: Colors.black),
            title: Text("Sessions", style: TextStyle(fontSize: 10.0, color:  screenIndex == 0 ? Theme.of(context).accentColor: Colors.black),),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, size: 22.0,color: screenIndex == 1 ? Theme.of(context).accentColor: Colors.black),
            title: Text("Bookmarks", style: TextStyle(fontSize: 10.0,color: screenIndex == 1 ? Theme.of(context).accentColor: Colors.black),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people, size: 22.0, color: screenIndex == 2 ? Theme.of(context).accentColor: Colors.black,),
            title: Text("Speakers", style: TextStyle(fontSize: 10.0, color:screenIndex == 2 ? Theme.of(context).accentColor: Colors.black),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 22.0,color: screenIndex == 3 ? Theme.of(context).accentColor: Colors.black),
            title: Text("Participants", style: TextStyle(fontSize: 10.0,color: screenIndex == 3 ? Theme.of(context).accentColor: Colors.black),),
            
          ),
                   
        ],
        
        currentIndex: 1,
        fixedColor: Theme.of(context).primaryColor,
        onTap: (index){
          changeScreen(index);
        },
      ),
      ),
     body:Scaffold(
       appBar: AppBar(
         title: Text("Notifications"),
       ),
       body: Material(
         child: Center(
           child: Text("No notifications"),
         ),
       ),
     )
   );
}
}