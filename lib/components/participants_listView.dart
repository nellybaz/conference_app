import 'package:flutter/material.dart';
import '../screens/profile.dart';

class ParticipantsListView extends StatefulWidget{
  final int listItemNumber;
  ParticipantsListView({this.listItemNumber});

  
   @override
   State<StatefulWidget> createState() {
return _ParticipantsListViewState();
}
}
class _ParticipantsListViewState extends State<ParticipantsListView>{


  displayParticipants(){
     List<Widget> holder = [];

     for (var i = 0; i < widget.listItemNumber; i++) {
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
   return Column(
     children: displayParticipants(),
   );
}
}