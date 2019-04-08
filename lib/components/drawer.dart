import 'package:flutter/material.dart';
import '../screens/settings.dart';
import '../screens/map.dart';
import '../screens/sessions.dart';
import '../screens/bookmarks.dart';
import '../screens/profile.dart';
import '../screens/participants.dart';
import '../screens/about.dart';
import '../screens/notifications.dart';



class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      //  color: Colors.white,

      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 15),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/sp2.jpg"),
                        fit: BoxFit.cover),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(75)),
                // child: Text("data"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Padding(padding: EdgeInsets.only(left: 10), child: Text("John Doe", style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
            SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Sessions()));
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.settings_input_svideo),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Sessions")),
                      )
                    ],
                  ),
                )),
            SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Bookmarks()));
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.bookmark_border),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Bookmarked Sessions")),
                      )
                    ],
                  ),
                )),
            SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile(name: "John Doe",)));
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.person_outline),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("My Profile")),
                      )
                    ],
                  ),
                )),
            SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AppNotification()));
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Stack(
                          children: <Widget>[
                            Icon(Icons.notifications_none),
                            Container(
                              height: 14,
                              width: 14,
                              decoration:BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(7)
                              ),

                              child: Center(
                                child: Text("8", style: TextStyle(color: Colors.white, fontSize: 9),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Notifications")),
                      )
                    ],
                  ),
                )),
            SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Participants()));
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.supervised_user_circle),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Participants")),
                      )
                    ],
                  ),
                )),
            SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ConferenceMap()));
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.map),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Map")),
                      )
                    ],
                  ),
                )),
            Divider(
              height: 2,
            ),
            SizedBox(
              width: double.infinity,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> About()));
                  },
                  child: Text("About"),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Padding( padding: EdgeInsets.only(left: 6 ), child: Text("Settings")),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Logout"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
