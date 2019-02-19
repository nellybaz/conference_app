import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './bookmarks.dart';
import './sessions.dart';
import './participants.dart';
import './speakers.dart';

import '../components/bottom_nav.dart';


class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  int screenIndex = 0;

    changeScreen(x){
          switch (x) {
          case 0:
              
            
            break;

            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Bookmarks()));

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
  // List<Widget> screens = [Sessions(), Bookmarks(), Participants(), Participants()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Hero(
        tag: "app_bottom_nav",
        child: BottomNav(screenIndex: screenIndex, changeScreen: changeScreen,)
      ),
      body: Sessions()
            );
   
  }
}