import 'package:flutter/material.dart';
import '../globals.dart';



import './participants.dart';
import './bookmarks.dart';
import './home.dart';
import '../components/bottom_nav.dart';
import './speakers.dart';

class ConferenceMap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConferenceMapState();
  }
}

class ConferenceMapState extends State<ConferenceMap> {
  
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
              
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Participants()));
            break;
          default:
        }
    }
    int screenIndex = 0;
  List<Widget> screens = [Home(), Bookmarks(), Participants(), Participants()];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Hero(
        tag: "app_bottom_nav",
        child: BottomNav(screenIndex: screenIndex, changeScreen: changeScreen,)
      ),
     appBar: AppBar(
       leading: IconButton(
         icon: Icon(Icons.arrow_back_ios),
         onPressed: (){
           Navigator.pop(context);
         },

       ),
       title: Text("Map ", style: TextStyle(
         fontSize: 16.0
       ),),
     ),
      body: Padding(
          padding: EdgeInsets.all(20),
           child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/map.png")
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
