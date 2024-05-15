import 'package:flutter/material.dart';
import 'package:test_app/core/widgets/text_widget.dart';
import '../styles/app_colors.dart';
import 'icon_button_widget.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key, required this.image,required this.nameofItem,required this.isAdd,required this.quantity,required this.total,required this.reduceQuantity,required this.IncreaseQuantity});
   final String image;
   final String nameofItem;
   final int quantity ;
   final int total ;
   final bool isAdd ;
   final void Function() reduceQuantity;
   final void Function() IncreaseQuantity;
  @override
  Widget build(BuildContext context) {


    
      return  Padding(
        padding: const EdgeInsetsDirectional.only(start: 20),
        child: Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  //color: Colors.white,
                  child: 
                   Row(
                   children: [
                     Image(
                      image: AssetImage(image),
                      height: 75 ,
                      ),
                     const SizedBox(width: 20,),
                       Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [   
                      const SizedBox(height: 20,),
                       DefaultTextWidget(text: nameofItem, textColor: Colors.black, textSize:15),
                      const SizedBox(height: 2,),
                      const DefaultTextWidget(text: '1I, price', textColor: Colors.black38, textSize: 10.0),
                      
                       Padding(
                         padding:  const EdgeInsetsDirectional.only( end: 8,bottom:8 ,top:8 ),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                           [
                            IconButtonWidget(
                              height: 30,
                              width: 37,
                              iconData:Icons.maximize_outlined,
                              onPressed:reduceQuantity,
                                 // cubit.changeQuantity(isAdd: false, num: 1,);
                              size:15,
                              colorofBorder: Colors.grey[100],
                              color: Colors.grey,
                              colorofContainer:const Color.fromRGBO(255, 255, 255, 1)),
                             const SizedBox(width: 10,),
                              Text('$quantity'),
                             const SizedBox(width: 10,),
                              IconButtonWidget(
                              height: 30,
                             width: 37,
                             iconData:Icons.add,
                             onPressed:IncreaseQuantity, 
                               //  cubit.changeQuantity(isAdd: true, num: 1);
                             size:15,
                             colorofBorder: Colors.grey[300],
                             color: defaultColor,
                             colorofContainer:Colors.white,),
                                
                             const SizedBox(width: 60,),
                             Stack(
                              children:[
                              const Divider(color: Colors.red,),
                              DefaultTextWidget(text: '\$$total', textColor: Colors.black87, textSize:15),
                             ], 
                             ),
                            ],
                            ),
                       ),],
                     ),
                    const SizedBox(width: 4,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
                      ],
                    ),
                     ],
                     ),
                     
              ),
      );
  
  }
}