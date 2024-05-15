import 'package:flutter/material.dart';
import 'package:test_app/core/widgets/icon_button_widget.dart';
import 'package:test_app/core/widgets/text_widget.dart';

AppBar appBar({required String title, List<Widget>? actions,
}) =>  AppBar(
        title:  Padding(
          padding:const EdgeInsetsDirectional.only(start: 80, end: 50),
          child:DefaultTextWidget(text: title, textColor: Colors.black87, textSize: 16.0)
          /* Text(title, style:const  TextStyle(
                      color: Colors.black87, fontSize: 16.0, height: 1,fontWeight: FontWeight.w500),),*/
        ),
        actions: actions ??[ 
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButtonWidget(
              width: 37,
              iconData:Icons.add,
              onPressed:(){} ,size:15)
          )],
        backgroundColor: Colors.white,
        elevation: 0.0,
        );
 