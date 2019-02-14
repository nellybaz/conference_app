import 'package:flutter/material.dart';
import './bookmarks.dart';
import './sessions.dart';
import './participants.dart';

class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  int screenIndex = 0;
  List<Widget> screens = [Sessions(), Bookmarks(), Participants(), Bookmarks()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 16.0,),
            title: Text("Sessions", style: TextStyle(fontSize: 14.0),),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, size: 16.0,),
            title: Text("Bookmarks", style: TextStyle(fontSize: 14.0),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people, size: 16.0,),
            title: Text("Speakers", style: TextStyle(fontSize: 14.0),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 16.0,),
            title: Text("Participants", style: TextStyle(fontSize: 14.0),),
            
          ),
                   
        ],
        currentIndex: screenIndex,
        fixedColor: Colors.red,
        onTap: (index) => setState((){
          screenIndex = index;
        }),
      ),
      body: screens[screenIndex]
            );
   
  }
}