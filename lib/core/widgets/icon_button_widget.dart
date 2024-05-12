import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class IconButtonWidget extends StatelessWidget {
   IconButtonWidget({super.key,required this.iconData});

  IconData iconData;   
  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: defaultColor
                      ),
                      height: 45,          
                      child: IconButton(onPressed: (){},
                       icon:  Icon(
                        iconData,
                        color: Colors.white,
                    )),
                  ) ;
  }
}