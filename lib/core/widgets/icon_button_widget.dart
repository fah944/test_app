import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class IconButtonWidget extends StatelessWidget {

   IconButtonWidget({
    required this.iconData,
    required this.onPressed,
     this.height,
     this.width,
     this.size, this.color, this.colorofContainer});

     final IconData iconData;  
     final void Function() onPressed;
     final double? height;
     final double? width;
     final double? size;
     final Color? color;
      final Color? colorofContainer;

   
  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:colorofContainer  ?? defaultColor
                      ),
                      height:height ?? 45, 
                      width: width ?? 50,         
                      child: IconButton(onPressed: onPressed,
                       icon:  Icon(
                        iconData,
                        color: color ??  Colors.white,
                        size:size?? 20,
                    )),
                  ) ;
  }
}