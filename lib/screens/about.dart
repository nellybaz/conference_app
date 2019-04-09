import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About TAS Conference"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Material(
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[ 
              Container(
                height: 120,
                width:150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo2.png")
                  )
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Padding( 
                padding: const EdgeInsets.only(bottom: 10),
                child: Text("The Transform Africa Summit is the Smart Africa flagship event. Following four successful editions, the fifth summit will take place in kigali, Rwanda, from 14 -17 May 2019. \n\nUnder the theme \"Boosting Africa's Digital Economy\", the Summit is expected to attract 4000 participants, including Heads of State and Governement, First Ladies, UN Broadband Commissioners, Regulators, Public & Private Sector, International Organizations, Industry Leaders, Investors, Entrepeneurs, Young Innovators, Civil Society and Academia. \n\n In addition to the Leaders Summit, TAS 2019 will feature subject specific streams tackling current digital economy topics. Delegates will be able to attend insightful & engaging sessions in the Hubs, Plenaries, Networking Lounges as well as several customized sessions by our partners.", textAlign: TextAlign.justify,),
              ),
              //  Text("")
            ], 
          ),
        ),
      ),
    );
  }
}
