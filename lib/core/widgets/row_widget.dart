import 'package:flutter/material.dart';

class RowWithIconWidget extends StatelessWidget {
 
    RowWithIconWidget({required this.title, required this.iconBtnWidget,this.textColor,this.textSize});
    
    final String title;
    Widget iconBtnWidget;
    final Color? textColor;
    final double? textSize;

  @override
  Widget build(BuildContext context) {
     return Row(
     children: [
                  Text(title,
                      style: TextStyle(
                      color:textColor,// Colors.black45, 
                      fontSize:textSize,// 16.0,
                      height: 1,fontWeight: FontWeight.w500),),
                   const Spacer(),
                   iconBtnWidget
                    ],
                  );
  }
}



 Widget rowWithOutIcon ({required String text})=>Padding(
   padding: const EdgeInsets.only(top: 10,bottom: 10),
   child: Row(
       children: [
                   Text(text,
                        style:const TextStyle(
                        color: Colors.black45, fontSize: 16.0, height: 1,fontWeight: FontWeight.w500),),
                  ],
                    ),
 );