
import 'package:flutter/material.dart';



class ProductCategoryItemWidget  extends StatelessWidget {



  Color color;
  final String image;
  final double heightOfImg;
  final double widthOfImg;
  final String nameOfProduct;
  final void Function() onPressed;

   ProductCategoryItemWidget ({super.key,required this.color, required this.image, required this.heightOfImg, required this.widthOfImg,required this.nameOfProduct,required this.onPressed});

  
  @override
  Widget build(BuildContext context) {
    return  MaterialButton( padding: const EdgeInsets.all(3),
      onPressed: onPressed,
      child: Container(
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
              mainAxisAlignment: MainAxisAlignment.center,
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
        
          ],
        ),
      ),
    );;
  }
}


