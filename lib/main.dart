

import 'package:flutter/material.dart';
import 'package:user_app/screens/user.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
          backgroundColor: Colors.amber,
        ),
        body: CheckApp(),
      ),
    );
  }
}
