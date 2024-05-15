import 'package:flutter/material.dart';

    dynamic showMBtmSheet({required BuildContext context,required List<Widget> rows})=> showModalBottomSheet(
              backgroundColor:  Colors.grey[200],
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
             // isScrollControlled: true,
             context: context,
             builder: (context)=> BtmSheetWidget(rows: rows),
       );


       

class BtmSheetWidget extends StatelessWidget {
  
   List <Widget>rows;
   BtmSheetWidget({super.key,required this.rows});

  @override
  Widget build(BuildContext context) 
  {
    return Padding(
               padding: const EdgeInsets.all(18.0),
               child: Column(
                children: rows
               ),
             );
  }
}









 


 
