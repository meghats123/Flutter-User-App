import 'package:flutter/material.dart';
import 'package:user_app/main.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController getName=TextEditingController();
  TextEditingController getAdmissionNo=TextEditingController();
  TextEditingController getCollegeName=TextEditingController();
  TextEditingController getParentName=TextEditingController();
  TextEditingController getParentMob=TextEditingController();
  TextEditingController getUsername=TextEditingController();
  TextEditingController getPassword=TextEditingController();
  TextEditingController getConfirmPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Register Page"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  TextField(
                    controller: getName,
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    controller: getAdmissionNo,
                    decoration: InputDecoration(
                        hintText: "Enter admission no",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    controller: getCollegeName,
                    decoration: InputDecoration(
                        hintText: "Enter College Name",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    controller: getParentName,
                    decoration: InputDecoration(
                        hintText: "Enter Parent Name",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    controller: getParentMob,
                    decoration: InputDecoration(
                        hintText: "Enter Parent Mobile No",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    controller: getUsername,
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    controller: getPassword,
                    decoration: InputDecoration(
                        hintText: "Enter Password ",
                        border: OutlineInputBorder()
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    controller: getConfirmPassword,
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        border: OutlineInputBorder()
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 10.0,),
                  RaisedButton(onPressed: (){
                    String getYourName=getName.text;
                    String getAdmiNO=getAdmissionNo.text;
                    String getCollege=getCollegeName.text;
                    String getPname=getParentName.text;
                    String getPmob=getParentMob.text;
                    String getUname=getUsername.text;
                    String getPass=getPassword.text;
                    String getConPass=getConfirmPassword.text;
                    print(getYourName);
                    print(getAdmiNO);
                    print(getCollege);
                    print(getPname);
                    print(getPmob);
                    print(getUname);
                    print(getPass);
                    print(getConPass);


                  },
                    child: Text("REGISTER"),
                    color: Colors.amber,
                  ),
                  SizedBox(height: 10.0,),
                  RaisedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));

                  },
                    child: Text("BACK TO LOGIN"),
                    color: Colors.amber,
                  )

                ],
              ),
          ),
          ),
        ),
      );
  }
}
