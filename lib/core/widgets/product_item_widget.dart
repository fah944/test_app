
import 'package:flutter/material.dart';
import 'package:test_app/core/styles/app_colors.dart';

import 'icon_button_widget.dart';



class ProductItemWidget  extends StatelessWidget {



  Color color;
  final String image;
  final double heightOfImg;
  final double widthOfImg;
  final String nameOfProduct;
  final String capacity;
  

   ProductItemWidget ({super.key,required this.color, required this.image, required this.heightOfImg, required this.widthOfImg,required this.nameOfProduct,required this.capacity});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
        color: Colors.white,
        child:  Column(
          children: [
             Image(
              image:AssetImage(image),
              width: widthOfImg,
              height: heightOfImg,
              fit: BoxFit.cover,
            ),
             const  SizedBox(
              height: 24,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  nameOfProduct,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:const TextStyle(
                      color: Colors.black87, fontSize: 15.0, height: 1,fontWeight: FontWeight.w500),
                ),
              ],
            ),
             const  SizedBox(
              height: 5,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  capacity+', price',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:const TextStyle(
                      color: Colors.black38, fontSize: 10.0, height: 1,fontWeight: FontWeight.w500),
                ),
              ],
            ),
             const  SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const Text('\$12',
                ),
                const Spacer(),
                IconButtonWidget(iconData: Icons.add,),
              ],
            ),
          ],
        ),
      )
    ;
  }
}


