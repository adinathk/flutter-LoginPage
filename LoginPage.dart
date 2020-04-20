import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final inputSection = Container(
    padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
    child: Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 50.0,
          child: Icon(
            Icons.account_circle,
            color: Colors.greenAccent,
            size: 50.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),

        SizedBox(height: 10.0),
        TextFormField(
            style: TextStyle(color: Colors.black,fontSize: 16.0),
            decoration: InputDecoration(
              icon: Icon(Icons.mail,color: Colors.black),
              border: InputBorder.none,
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.black,fontSize: 16.0),
            )
        ),
        SizedBox(height: 10.0),
        Divider(color: Colors.black, height: 1.0,),
        TextFormField(
            style: TextStyle(color: Colors.black,fontSize: 16.0),
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock,color: Colors.black),
              border: InputBorder.none,
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.black,fontSize: 16.0),
            )
        ),
        SizedBox(height: 10.0),
        Divider(color: Colors.black, height: 1.0,),
      ],
    ),
  );

  final forgotPasswordSection = Container(
    padding: EdgeInsets.only(top: 5.0),
    child: Center(
      child: Text("Forgot Password?",style: TextStyle(color: Colors.red[200]),),
    ),
  );


  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  inputSection,
                  SizedBox(height: 20.0),
                  forgotPasswordSection,
                  SizedBox(height: 20.0),
                  Align(
                    child: SizedBox(
                      height: 40.0,
                      width: 150.0,
                      child: FlatButton(
                        onPressed: (){},
                        color: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16.0)),
                      ),
                    ),
                  )



                ],
              ),
            ),

            Expanded(
              flex:0,
              child: Container(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: Center(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed:() {},
                      elevation: 2.0,
                      color: Colors.greenAccent,
                      child: Text("SignUp",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16.0),
                      ),
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}