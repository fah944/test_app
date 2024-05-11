import 'package:flutter/material.dart';
import 'package:test_app/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:  SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white ,
      body: Center(
        child: Text('nextscrren',style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold  
        ),),
      ),
    );
  }
}
 