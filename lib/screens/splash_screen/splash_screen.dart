import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/styles/app_colors.dart';
import 'package:test_app/core/utils/app_assets.dart';
import 'package:test_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState()
   {
    super.initState();
    _navigatetohome();
   }

_navigatetohome()async{
  await Future.delayed(
    Duration(milliseconds: 5000 ),
    (){});
  Navigator.pushReplacement(
    context,
   MaterialPageRoute(builder: (context)=> TestApp()
   )
   );
}
  @override
  Widget build(BuildContext context) 
  {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.lemon,
              size: 28,
              color: defaultColor,

            ),
            SizedBox(width: 6,),
            Text('foost',style: TextStyle(
          color:defaultColor,
          fontSize: 30,
          fontWeight: FontWeight.bold  
        ),)
          ],
        ),
      ),
    );
  }
}