import 'package:flutter/material.dart';
import '../globals.dart';



import './participants.dart';
import './bookmarks.dart';
import './home.dart';
import '../components/bottom_nav.dart';
import './speakers.dart';

class Update extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UpdateState();
  }
}

class UpdateState extends State<Update> {
  
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
       title: Text("Update Profile", style: TextStyle(
         fontSize: 16.0
       ),),
     ),
      body: Padding(
          padding: EdgeInsets.all(20),
           child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                                      child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(75),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sp2.jpg")
                        )
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Text("Elizabeth Noah"),
                       Text("eliznaoah@google.com", style: TextStyle(fontSize: 12),)
                     ],
                   ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            Text("Bio", style: TextStyle(
              fontSize: 16
            ),),
            Container(
               margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: primaryGrey)
              ),
              height: 120,
              child: TextFormField(
                maxLines: null,
                decoration: InputDecoration(
                  // labelText: "Bio",
                  border: InputBorder.none,
                  labelStyle: TextStyle(color: Colors.black)
                ),
              ),
            ),
 
            Text("Facebook Username"),
            Container(
               margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: primaryGrey)
              ),
              child: TextFormField(
                // maxLines: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  // labelText: "",
                  labelStyle: TextStyle(color: Colors.black)
                ),
              ),
            ),

            Text("Website"),
 
            Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: primaryGrey)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  // labelText: "",
                  labelStyle: TextStyle(color: Colors.black)
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.5,
                child: RaisedButton(
                  color: primaryColor,
                  onPressed: (){},
                  child: Text("UPDATE", style: TextStyle(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
