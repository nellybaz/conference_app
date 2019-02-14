import 'package:flutter/material.dart';
import '../components/drawer.dart';
import './session_datails.dart';




class Sessions extends StatefulWidget{
   
 @override
  State<StatefulWidget> createState() {
    
    return _SessionsState();
  }
}


class _SessionsState extends State<Sessions>{
  GlobalKey <ScaffoldState> _scaffoldKey = new GlobalKey();



  _populateSessionListList(){

     var primaryColor = Color(0xff004281);
    List<Widget> sessions = [];

  
    for(int i=0; i<15; i++){
      
      sessions.add(
        Container(
          decoration: BoxDecoration(
            color: Color(0xffDDDEDF),
            borderRadius: BorderRadius.all(Radius.circular(2.0))
          ),
          
          margin: EdgeInsets.only(bottom:10.0),
          // height: 140.0,
          child: InkWell(
            onTap: (){
              print(i);
              Navigator.push(context, MaterialPageRoute(builder: (contexr)=> SessionDetails()));
            },
            child: Padding(
            padding: EdgeInsets.only(left:10.0, right: 10.0, top: 10.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            fontSize: 12.0,
                            // fontWeight: FontWeight.bold
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
                            fontSize: 12.0,
                          ),)
                        ],
                      ),
                    ),
                  )
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 10.0),
              child: Text("The Future of Blockchain", style: TextStyle(
                fontWeight: FontWeight.bold, color: primaryColor, fontSize: 14.0
              ),),),


              Padding(padding: EdgeInsets.only(top: 5.0),
              child: Text("Speakers: ", style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 14.0
              ),),),


              Padding(
                padding: EdgeInsets.only(top: 3.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("John Doe -  CEO - Hexakomb", style: TextStyle(
                    fontSize: 11.0
                  ),),

                   Text("Marry Matt -  CEO - Ventures Ltd", style: TextStyle(
                    fontSize: 11.0
                  ),)
                ],
              ),
              )
            ],
          ),
          ),
          )
          
        )
      );
    }
    return sessions;
  }
   @override
   Widget build(BuildContext context) {
   return Scaffold(
     key: _scaffoldKey,
     drawer: MyDrawer(),
     body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: (){
                _scaffoldKey.currentState.openDrawer();
              },
              icon: Icon(Icons.menu),),
            expandedHeight: 150.0,
            floating: false,
            pinned: false,
            // backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text("Sessions", style: TextStyle(
              //   fontSize: 14.0
              // ),),
              centerTitle: true,
              background: Image.asset('assets/images/jumbo.jpg', fit: BoxFit.cover,)

            ),
          ),

         SliverPadding(
           padding: EdgeInsets.all(10.0),
           sliver:  SliverList(
            delegate: SliverChildListDelegate(_populateSessionListList()),
          ),
         )

        ],
      ),
   );
}
}