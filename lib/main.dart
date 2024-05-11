import 'package:flutter/material.dart';
import 'package:test_app/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:test_app/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class  TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      routes: {
         //static String id = "HomePage";
        OnBoardScreen.id : (context) => OnBoardScreen(),
      },
      initialRoute:OnBoardScreen.id,
    );
  }
}
 