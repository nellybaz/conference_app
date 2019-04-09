import 'package:flutter/material.dart';
import './participants.dart';
import './profile.dart';
import './bookmarks.dart';
import './home.dart';
import '../components/bottom_nav.dart';
import './speakers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SessionDetails extends StatefulWidget{
  final title;
  SessionDetails({this.title});
  @override
  State<StatefulWidget> createState() {
   
    return _SessionDetailsState();
  }
  
}

class _SessionDetailsState extends State<SessionDetails>{
    

         _launchURL() async {
  var url ='https://twitter.com/intent/tweet?hashtags=TAS2019' ;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

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


  List<Widget> _displaySpeakers(){
    List<Widget> holder = [];

    for (var i = 0; i < 5; i++) {
      holder.add(
        Padding(
          padding: EdgeInsets.only(top:5.0),
          child: Container(
            padding: EdgeInsets.only(top:10.0, bottom: 10.0),
            height: 100.0,
            width: double.infinity,            
            decoration: BoxDecoration(
              // color: Colors.grey,
              border: Border.all(width: 1.0, color: Color(0xffC4C4C4)),
              borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
            child: FlatButton(
              onPressed: (){
                print('speaker $i pressed');

                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile(name: "Elizabeth Noah",)));
              },
                          child: Row(
                children: <Widget>[
                  
                     Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/sp.png')
                        )
                      ),
                    ),
                  

                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top:7.0, left: 10.0, bottom: 10.0),
                                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom:5.0),
                            child: Text("Elizabeth Noah", style: TextStyle(
                              fontSize: 14.0
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom:5.0),
                                                    child: Text("CEO -  Ventures Ltd", style: TextStyle(
                              fontSize: 14.0
                            )),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 14.0,
                                padding: EdgeInsets.only(right: 5.0),
                                child: Image.asset('assets/images/twitter.png'),
                              ),
                              Text("@eliz_noah", style: TextStyle(
                            fontSize: 14.0
                          ))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      );
    }
    return holder;
  }
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
       title: Text(widget.title, style: TextStyle(
         fontSize: 16.0
       ),),
     ),
     body: true ? Padding(
       padding: EdgeInsets.only(top:10.0, bottom: 10.0, left: 10.0, right: 10.0),
       child: ListView(
        //  crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      // color: Colors.red,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child: Icon(Icons.access_time, size: 16.0, ),
                          ),
                          Text("10:45 - 13:30", style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      // color: Colors.red,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child: Icon(Icons.location_on, size: 16.0,),
                          ),
                          Text("Room 4", style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold, 
                          ),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text("Description", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16.0, color: Theme.of(context).accentColor
                ),),
              ), 

              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "The Lorem Ipsum is simply dummy text of the composition and layout before printing. Lorem Ipsum has been the standard text for printing since the 1500s, when an anonymous printer assembled pieces of text together to "
                , style: TextStyle(
                  fontSize: 14.0, 
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Text("Moderator", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16.0, color: Theme.of(context).accentColor
                ),),
              ), 

              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  "Elizabeth Noah"
                , style: TextStyle(
                  fontSize: 14.0, 
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 3.0),
                child: Text(
                  "CEO - Ventures Ltd"
                , style: TextStyle(
                  fontSize: 14.0, 
                  fontStyle: FontStyle.italic
                ),),
              ), 

              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
                child: Text("Speakers", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16.0, color: Theme.of(context).accentColor
                ),),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _displaySpeakers(),
              ),


              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  height: 50.0,
                  child: FlatButton(
                    color: Theme.of(context).primaryColor,

                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.calendar, color: Colors.white, size: 17,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("ADD TO CALENDER", style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),

             Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  height: 50.0,
                  child: FlatButton(
                    color: Theme.of(context).accentColor,

                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.solidBookmark, color: Colors.white, size: 17,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("BOOKMART EVENT", style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC4C4C4)),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  height: 50.0,
                  child: FlatButton(
                    // color: Theme.of(context).primaryColor,

                    onPressed: (){
                      _launchURL();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.twitter, color: Colors.blue, size: 17,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("TWEET EVENT", style: TextStyle(color: Colors.black),),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
         ],
       ),
     ): screens[screenIndex]
   );
}
}