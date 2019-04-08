import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../globals.dart';
import './updateProfile.dart';


import './participants.dart';
import './bookmarks.dart';
import './home.dart';
import '../components/bottom_nav.dart';
import './speakers.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingsState();
  }
}

class SettingsState extends State<Settings> {

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



  bool showMyEmail = true;
   bool showMySocialMedia = true;
    bool showMyPhone = false;
     bool showNotifs = false;
  

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
       title: Text("Settings", style: TextStyle(
         fontSize: 16.0
       ),),
     ),
      body: Padding(
        padding: EdgeInsets.all(20),
              child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: primaryGrey),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Show my email"),
                    )),
                  CupertinoSwitch(
                    value: showMyEmail,
                    onChanged: (val){
                      setState(() {
                        showMyEmail = val;
                      });
                    },

                  )
                ],
              ),
            ),
 
                        Container(
                          
                          margin: EdgeInsets.only(bottom: 10),
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: primaryGrey),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Show my social media"),
                    )),
                  CupertinoSwitch(
                    value: showMySocialMedia,
                    onChanged: (val){
                      setState(() {
                        showMySocialMedia = val;
                      });
                    },

                  )
                ],
              ),
            ),

                        Container(
                          margin: EdgeInsets.only(bottom: 10),
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: primaryGrey),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Show my phone number"),
                    )),
                  CupertinoSwitch(
                    value: showMyPhone,
                    onChanged: (val){
                      setState(() {
                        showMyPhone = val;
                      });
                    },

                  )
                ],
              ),
            ),

                        Container(
                          margin: EdgeInsets.only(bottom: 10),
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: primaryGrey),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Disable Notification"),
                    )),
                  CupertinoSwitch(
                    value: showNotifs,
                    onChanged: (val){
                      setState(() {
                        showNotifs = val;
                      });
                    },

                  )
                ],
              ),
            ),

                   Container(
                          margin: EdgeInsets.only(bottom: 10),
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: primaryGrey),
                borderRadius: BorderRadius.circular(5)
              ),
              child: SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Update()));
                  },
                  child: Text("Update Profile"),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
