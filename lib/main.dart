import 'package:flutter/material.dart';
import 'package:notes_app/auth/signup.dart';
import 'package:notes_app/home/homepage.dart';

import 'auth/login.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login(),
      theme:ThemeData(
        primaryColor:Colors.purpleAccent[200],

        ),


      routes: {
        "login" :(context) => Login(),
        "signup":(context) => SignUp(),
        "homepage":(context) => HomePage(),
      },


    );


  }
}
