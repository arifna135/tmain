import 'package:flutter/material.dart';
import 'package:tmain/DashBoard.dart';
import 'package:tmain/LoginScreen.dart';
import 'package:tmain/RegistrationScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {

      '/login': (context) => LoginScreen(),
      '/register':(context)=>RegistrationScreen(),
      '/dashboard':(context)=>DashBoard(),
    },
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home:LoginScreen(),
    );


  }
}
