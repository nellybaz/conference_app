// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import './bookmarks.dart';
// import './sessions.dart';
// import './participants.dart';


// class Home extends StatefulWidget{

//   @override
//   State<StatefulWidget> createState() {
//     return _HomeState();
//   }
// }

// class _HomeState extends State<Home>{
//   int screenIndex = 0;
//   List<Widget> screens = [Sessions(), Bookmarks(), Participants(), Participants()];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Hero(
//         tag: 'bottom_nav',
//         child: CupertinoTabScaffold(
//               tabBar: CupertinoTabBar(
//                 backgroundColor: Colors.white,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.home, size: 22.0,color: screenIndex == 0 ? Theme.of(context).accentColor: Colors.black),
//               title: Text("Session", style: TextStyle(fontSize: 10.0, color:  screenIndex == 0 ? Theme.of(context).accentColor: Colors.black),),
              
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.bookmark, size: 22.0,color: screenIndex == 1 ? Theme.of(context).accentColor: Colors.black),
//               title: Text("Bookmarks", style: TextStyle(fontSize: 10.0,color: screenIndex == 1 ? Theme.of(context).accentColor: Colors.black),)
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.group, size: 22.0, color: screenIndex == 2 ? Theme.of(context).accentColor: Colors.black,),
//               title: Text("Speakers", style: TextStyle(fontSize: 10.0, color:screenIndex == 2 ? Theme.of(context).accentColor: Colors.black),)
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.person, size: 22.0,color: screenIndex == 3 ? Theme.of(context).accentColor: Colors.black),
//               title: Text("Participants", style: TextStyle(fontSize: 10.0,color: screenIndex == 3 ? Theme.of(context).accentColor: Colors.black),),
              
//             ),
                     
//           ],
//         ),
//         tabBuilder: (context, index){
//           switch (index) {
//             case 1:
//               return Bookmarks();
//               break;

//             default:
//               return Sessions();
//           }
//         },
//       ),
//       )
//             );
   
//   }
// }