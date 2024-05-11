import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/styles/app_colors.dart';
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
    Duration(milliseconds: 1500 ),
    (){});
  Navigator.pushReplacement(
    context,
   MaterialPageRoute(builder: (context)=> MyHomePage()
   )
   );
}
  @override
  Widget build(BuildContext context) 
  {
    return const Scaffold(
      backgroundColor: defaultColor ,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.lemon,
              size: 22,
              color: Colors.white,

            ),
            SizedBox(width: 5,),
            Text('foost',style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold  
        ),)
          ],
        ),
      ),
    );
  }
}