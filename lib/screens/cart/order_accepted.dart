import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_assets.dart';
import 'package:test_app/core/widgets/text_button_widget.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});
   static String id = "OrderAccepted";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          
          children: [
            const Spacer(),
            const Image(image: AssetImage(AppAssets.cakepop),),
            const SizedBox(height: 20,),
             const Center(
               child: Text('Your Order has been accepted',maxLines: 1,style: TextStyle(  color: Colors.black87,fontSize: 23, ),
               ),
             ),
            const SizedBox(height: 8,),
            // rowWithOutIcon(text: 'your items have been placed and is on it\'s way to begin processed', textSize: 12),
            const Center(
               child: Text('your items have been placed and is on it\'s way to begin processed',maxLines: 2,style: TextStyle(  color: Colors.black45,fontSize: 18, ),
               ),
             ),
            const Spacer(),
            DefaultTextButton(text: 'Trace Order', onPressed: (){}),
            const SizedBox(height: 15,),
            TextButton(onPressed: (){Navigator.pop(context);}, child:const Text('Back to home',style: TextStyle(  color: Colors.black87,fontSize: 14, ),),),
              const Spacer(),
          ],
        ),
      ),
    );
  }
}