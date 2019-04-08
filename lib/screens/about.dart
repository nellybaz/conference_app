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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text("The Lorem Ipsum is simply dummy text of the composition and layout before printing. Lorem Ipsum has been the standard text for printing since the 1500s, when an anonymous printer assembled pieces of text together to"),
              ),
               Text("The Lorem Ipsum is simply dummy text of the composition and layout before printing. Lorem Ipsum has been the standard text for printing since the 1500s, when an anonymous printer assembled pieces of text together to")
            ],
          ),
        ),
      ),
    );
  }
}
