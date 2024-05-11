import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_assets.dart';

import '../../core/styles/app_colors.dart';

class OnBoardScreen extends StatelessWidget {
   static String id = "OnBoardScreen";
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: Color.fromARGB(255, 117, 118, 114),
      body:Stack(
        alignment: Alignment.bottomCenter,
        children: [
        
          Image( 
        image: AssetImage(AppAssets.onBoardingImage),
        fit: BoxFit.cover,   
        height: double.infinity,
        width: double.infinity,
      // alignment: Alignment.center,
   ),
          Container(
            padding:const EdgeInsetsDirectional.only(bottom: 125),
            child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             const Icon(
                FontAwesomeIcons.lemon,
                size: 28,
                color: Colors.white,
          
              ),
             const SizedBox(height: 5,),
             const Text('Welcome \nto our store',
              textAlign: TextAlign.center,
              style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold  
                  ),),
          
                   Text(
             'Ger your groceries in as fast as on hour',
              style: TextStyle(
              color: Colors.grey[200],
              fontSize: 10,
                         ),)
            ],
                  ),
          ),
      
      
      ],)
    );
  }
}