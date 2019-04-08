import 'package:flutter/material.dart';
import './participants.dart';
import './bookmarks.dart';
import './home.dart';
import '../components/bottom_nav.dart';
import './speakers.dart';

import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget{
  final String name;
  Profile({this.name});
   @override
   State<StatefulWidget> createState() {
return _ProfileState();
}
}



class _ProfileState extends State<Profile>{
     
     _launchURL() async {
  const url = 'https://www.linkedin.com/in/nbassey/';
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
   @override
   Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: Hero(
        tag: "app_bottom_nav",
        child: BottomNav(screenIndex: screenIndex, changeScreen: changeScreen,),
     ),
     appBar: AppBar(
       title: Text(widget.name, style: TextStyle(
         fontSize: 16.0
       )),
       leading: IconButton(
         icon: Icon(Icons.arrow_back_ios),
         onPressed: (){
           Navigator.pop(context);
         },

       ),
       
     ),

     body: ListView(
       children: <Widget>[
         Padding(
       padding: EdgeInsets.all(10.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 0.0, bottom: 10.0),
          child:  Container(
           child: Center(
           ),
           width: 125.0,
           height: 125.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(125.0),
             border: Border.all(width: 2.0, color: Theme.of(context).primaryColor),
             image: DecorationImage(
               image: AssetImage('assets/images/sp2.jpg'),
               fit: BoxFit.cover
             )
           ),
         ),
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 5,
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.name, style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                     fontSize: 16.0

                  ),),
                  Text("CE0 @ Ventures LTD"),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset('assets/images/twitter.png', height: 16.0, width: 16.0,), 
                       Padding(
                         padding: EdgeInsets.only(left: 5.0),
                         child: Text("@eliz_noah"),
                       )
                       
                      ],
                    ),
                  )
                ],
              ),
            ),

            Expanded(
              flex: 3,
                          child: FlatButton(
                onPressed: (){
                  _launchURL();
                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("LinkedIn"),
                    ),
                    Image.asset('assets/images/linkedin.png')
                  ],
                ),
              ),
            )
          ],
        ),

        Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 7.0),
          child: Text("Bio:", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0
        ),),
        ),
        Text("The Lorem Ipsum is simply dummy text of the composition and layout before printing. Lorem Ipsum has been the standard text for printing since the 1500s, when an anonymous printer assembled pieces of text together to make a sample book of text fonts. It has not only survived five centuries, but has also adapted to computer office, without its content is changed. It was popularized in the 1960s through the sale of Letraset sheets containing passages from Lorem Ipsum, and, more recently, by its inclusion in text layout applications, such as Aldus PageMaker.", style: TextStyle(
          
        ),
        textAlign: TextAlign.justify,
      
        ),

        Padding(
          padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
          child: Container(
          width: double.infinity,
          child: FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> Participants()));
            },
            child: Text("CONNECT ON TWITTER", style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0),
            borderRadius: BorderRadius.circular(3),
            
          ),
        ),
        ),

         Padding(
          padding: EdgeInsets.only(top: 0.0, bottom: 20.0),
          child: Container(
          width: double.infinity,
          child: FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> Participants()));
            },
            child: Text("CONNECT ON LINKEDIN", style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0),
            borderRadius: BorderRadius.circular(3),
            
          ),
        ),
        )
       ],
     ),
     )
       ],
     ),
   );
}
}

