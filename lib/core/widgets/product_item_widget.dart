
import 'package:flutter/material.dart';
import 'package:test_app/core/widgets/text_widget.dart';
import 'icon_button_widget.dart';



class ProductItemWidget  extends StatelessWidget {



  Color color;
  final String image;
  final double heightOfImg;
  final double widthOfImg;
  final String nameOfProduct;
  final String capacity;
   final void Function() onPressed;

   ProductItemWidget ({super.key,required this.color, required this.image, required this.heightOfImg, required this.widthOfImg,required this.nameOfProduct,required this.capacity,required this.onPressed});

  
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
              DefaultTextWidget(text: nameOfProduct, textColor: Colors.black87, textSize: 15.0)
              ],
            ),
             const  SizedBox(
              height: 5,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 DefaultTextWidget(text: capacity+', price', textColor: Colors.black38, textSize: 10.0)

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
                IconButtonWidget(iconData: Icons.add,onPressed: onPressed,),
              ],
            ),
          ],
        ),
      )
    ;
  }
}


