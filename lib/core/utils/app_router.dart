

import 'package:flutter/material.dart';
import 'package:test_app/screens/explore/Beverages_screen.dart';
import 'package:test_app/screens/explore/dssert_screen.dart';
import 'package:test_app/screens/explore/fast_food_screen.dart';
import 'package:test_app/screens/explore/fruits_screen.dart';
import 'package:test_app/screens/home_screen/home_screen.dart';
import 'package:test_app/screens/splash_screen/splash_screen.dart';

import '../../screens/on_boarding_screen/on_boarding_screen.dart';

abstract class AppRouter {
  static final router = <String, WidgetBuilder>{
    //LoginView.route: (context) => const LoginView(),
    SplashScreen.id:(context) => SplashScreen(),
    OnBoardScreen.id : (context) => OnBoardScreen(),
    HomeScreen.id :(context) =>  HomeScreen(),

    FruitsScreen.id :(context) =>  const FruitsScreen(),
    FastFoodScreen.id:(context) => const FastFoodScreen(),
    DssertScreen.id :(context) =>  const DssertScreen(),
    BreveagesScreen.id :(context) =>  const BreveagesScreen(),
    


  };
}