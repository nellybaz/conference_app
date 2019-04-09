import 'package:flutter/material.dart';
import '../components/drawer.dart';
import './session_details.dart';
import '../globals.dart';

class Sessions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SessionsState();
  }
}

class _SessionsState extends State<Sessions>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  _populateSessionListList() {
    List<Widget> sessions = [];

    for (int i = 0; i < 15; i++) {
      sessions.add(Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(2.0))),
          margin: EdgeInsets.only(bottom: 10.0),
          // height: 140.0,
          child: FlatButton(
            onPressed: () {
              print(i);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SessionDetails(
                            title: "The Future of Blockchain",
                          )));
            },
            child: Padding(
              padding: EdgeInsets.only(
                  left: 0.0, right: 0.0, top: 10.0, bottom: 10.0),
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
                                child: Icon(
                                  Icons.access_time,
                                  size: 16.0,
                                ),
                              ),
                              Text(
                                "10:45 - 13:30",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  // fontWeight: FontWeight.bold
                                ),
                              )
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
                                child: Icon(
                                  Icons.location_on,
                                  size: 16.0,
                                ),
                              ),
                              Text(
                                "Room 4",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "The Future of Blockchain",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                          fontSize: 14.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      "Speakers: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "John Doe -  CEO - Hexakomb",
                          style: TextStyle(fontSize: 11.0),
                        ),
                        Text(
                          "Marry Matt -  CEO - Ventures Ltd",
                          style: TextStyle(fontSize: 11.0),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )));
    }
    return sessions;
  }

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
      //  appBar: SLiver,
      body: Material(
          color: primaryGrey,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool isScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  centerTitle: true,
                  title: Text("Sessions"),
                  expandedHeight: MediaQuery.of(context).size.height * 0.35,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'assets/images/jumbo.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size(double.infinity, 50),
                    child: Opacity(
                      opacity: 1,
                      child: Material(
                        color: Theme.of(context).primaryColor,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: Center(child: Text("TAS 2019 Sessions", style: TextStyle(color: Colors.white),)),
                              decoration: BoxDecoration(
                                // border: Border.all(width: 1),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            TabBar(
                              // isScrollable: true,
                              unselectedLabelColor: Colors.white,
                              labelColor: Theme.of(context).primaryColor,
                              indicator: BoxDecoration(color: Colors.white),
                              controller: _tabController,
                              tabs: <Widget>[
                                Tab(
                                  text: "Day 1",
                                ),
                                Tab(
                                  text: "Day 2",
                                ),
                                Tab(
                                  text: "Day 3",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: <Widget>[
                ListView(
                  children: _populateSessionListList(),
                ),
                ListView(
                  children: _populateSessionListList(),
                ),
                ListView(
                  children: _populateSessionListList(),
                )
              ],
            ),
          )
          //     CustomScrollView(
          //   slivers: <Widget>[
          //     SliverAppBar(
          //       centerTitle: true,
          //       leading: IconButton(
          //         onPressed: (){
          //           _scaffoldKey.currentState.openDrawer();
          //         },
          //         icon: Icon(Icons.menu),),
          //       expandedHeight: 150.0,
          //       floating: false,
          //       pinned: false,
          //       // backgroundColor: Colors.white,
          //       flexibleSpace: FlexibleSpaceBar(
          //         // title: Text("Sessions", style: TextStyle(
          //         //   fontSize: 14.0
          //         // ),),
          //         centerTitle: true,
          //         background: Image.asset('assets/images/jumbo.jpg', fit: BoxFit.cover,)

          //       ),
          //     ),
          //    SliverPadding(
          //      padding: EdgeInsets.all(10.0),
          //      sliver:  SliverList(
          //       delegate: SliverChildListDelegate(
          //         [
          //           TabBar(
          //             controller: _tabController,
          //             tabs: <Widget>[
          //               Tab(
          //                 text: "One",
          //               ),
          //               Tab(
          //                 text: "One",
          //               ),
          //               Tab(
          //                 text: "One",
          //               )
          //             ],
          //           ),
          //           // Column(
          //           //   children: _populateSessionListList(),
          //           // ),

          //           TabBarView(
          //             controller: _tabController,
          //             children: <Widget>[
          //               Text("data"),
          //               Text("data"),
          //               Text("data"),
          //             ],
          //           )
          //         ]
          //       ),
          //     ),
          //    )

          //   ],
          // ),
          ),
    );
  }
}
