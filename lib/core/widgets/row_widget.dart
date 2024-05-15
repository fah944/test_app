import 'package:flutter/material.dart';
import 'package:test_app/core/widgets/text_widget.dart';

class RowWithIconWidget extends StatelessWidget {
 
    RowWithIconWidget({required this.title, required this.iconBtnWidget,required this.textColor,required this.textSize});
    
    final String title;
    Widget iconBtnWidget;
    final Color textColor;
    final double textSize;

  @override
  Widget build(BuildContext context) {
     return Row(
     children: [
                 DefaultTextWidget(text: title, textColor: textColor, textSize: textSize),
                 const Spacer(),
                 iconBtnWidget
                    ],
                  );
  }
}




 Widget rowWithOutIcon ({required String text, required double textSize})=>Padding(
   padding: const EdgeInsets.only(top: 10,bottom: 10),
   child: Row(
       children: [              
          DefaultTextWidget(text: text, textColor:  Colors.black45, textSize: textSize)
                  ],
                    ),
 );


 class RowForCheckOutWidget extends StatelessWidget {
 
    RowForCheckOutWidget({required this.title, required this.iconBtnWidget,required this.textColor,required this.textSize,required this.widget});
    
    final String title;
    Widget iconBtnWidget;
    Widget widget;
    final Color textColor;
    final double textSize;

  @override
  Widget build(BuildContext context) {
     return Row(
     children: [
                 DefaultTextWidget(text: title, textColor: textColor, textSize: textSize),
                 const Spacer(),
                 widget,

                 iconBtnWidget
                    ],
                  );
  }
}