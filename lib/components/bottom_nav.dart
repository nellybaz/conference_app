import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget{
  final int screenIndex;
  final Function changeScreen;
  BottomNav({this.screenIndex, this.changeScreen});
  
   @override
   Widget build(BuildContext context) {
   return BottomNavigationBar(
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
        
        currentIndex: screenIndex,
        fixedColor: Theme.of(context).primaryColor,
        onTap: (index){
          changeScreen(index);
        },
      );
}
}