import 'package:flutter/material.dart';

AppBar appBar({required String title}) =>  AppBar(
        title:  Padding(
          padding:const EdgeInsetsDirectional.only(start: 65, end: 65),
          child: Text(title, style:const  TextStyle(
                      color: Colors.black87, fontSize: 16.0, height: 1,fontWeight: FontWeight.w500),),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        );
 