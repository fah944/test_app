import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/core/cubit/cubit.dart';
import 'package:test_app/core/utils/app_router.dart';
import 'package:test_app/screens/home_screen/home_screen.dart';
import 'package:test_app/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:test_app/screens/splash_screen/splash_screen.dart';

import 'core/cubit/bloc_ob_server.dart';
late Size screenSize;
void main() {
   Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return MaterialApp(

     debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (context) => AppCubit(),
      child: TestApp(),),
    );
  }
}

class  TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      routes:AppRouter.router,
      initialRoute:SplashScreen.id,
    );
  }
}
 