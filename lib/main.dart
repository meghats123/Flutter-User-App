

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  TextEditingController getUsername=TextEditingController();
  TextEditingController getPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("User App"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: getUsername,
                decoration: InputDecoration(
                  hintText: "Enter the Username",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              TextField(
                controller: getPassword,
                decoration: InputDecoration(
                  hintText: "Enter the Password",
                  border: OutlineInputBorder()
                ),
                obscureText: true,
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){
                String getUname=getUsername.text;
                String getPass=getPassword.text;
                print(getUname);
                print(getPass);
                
              },
                color: Colors.amber,
                child: Text("LOGIN"),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){
                
              },
                color: Colors.amber,
                child: Text("REGISTER"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
