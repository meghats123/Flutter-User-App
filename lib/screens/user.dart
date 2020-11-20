import 'package:flutter/material.dart';
import 'package:user_app/screens/Register.dart';



class CheckApp extends StatefulWidget {
  @override
  _CheckAppState createState() => _CheckAppState();
}

class _CheckAppState extends State<CheckApp> {
  TextEditingController getUsername=TextEditingController();
  TextEditingController getPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
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
            color: Colors.red,
            child: Text("LOGIN"),
          ),
          SizedBox(height: 10.0,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));

          },
            color: Colors.red,
            child: Text("REGISTER"),
          )
        ],
      ),
    );
  }
}
