import 'package:flutter/material.dart';

import '../home.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        body: Container(
          color: Theme.of(context).primaryColorLight,
          child: Center(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 10.0,
            child: Text(""),
          ),
          Expanded(
            flex: 2,
            child: Container(       
              child: Image.asset('assets/images/logo1.png'),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView(
                          children:[Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Color(0xffDCE0E3),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    // controller: emailController,
                    validator: (value) =>
                        !value.contains('@') ? 'Not a valid email.' : null,
                    onSaved: (val) {},
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 14.0),
                      border: InputBorder.none,
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(fontSize: 12.0),
                      prefixIcon: Icon(Icons.email,color: Colors.black, size: 16.0,),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 12.0)
                    ),
                  ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffDCE0E3),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),
                    height: 40.0,
                    
                    margin: EdgeInsets.only(top:20),
                    child: TextFormField(
                      // controller: emailController,
                       style: TextStyle(fontSize: 12.0, color: Colors.black),
                      validator:(value){},                       
                      onSaved: (val) {},
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10.0),
                        border: InputBorder.none,
                        hintText: 'Enter your pin',
                        hintStyle: TextStyle(fontSize: 12.0),
                        prefixIcon: Icon(Icons.pin_drop, color: Colors.black, size: 16.0,),
                        labelText: 'Pin',
                        labelStyle: TextStyle(color: Colors.black, fontSize: 12.0)
                      ),
                    ),
                    
                  ),
                  Container(
                    padding: EdgeInsets.only(),
                    decoration: BoxDecoration(                   
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    margin: EdgeInsets.only(top:40.0),
                    child: SizedBox(
                    width: double.infinity,
                    height: 40.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      color: Color(0xff527EA8),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text("Processing..."),
                        )); 
                      }

                      print('loggin pressed');

                      Navigator.push(context, MaterialPageRoute(builder:(context)=> Home() ));
                    },
                    child: Text("Log in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0)),
                  ),
                  ),
                  )
                ],
              ),
          ),]
            ),
          )
        ],
      ),
    )),
        ));
  }
}
