import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/core/cubit/states.dart';
import 'package:test_app/core/utils/app_assets.dart';
import 'package:test_app/core/widgets/cart_item_widget.dart';
import 'package:test_app/screens/cart/order_accepted.dart';

import '../../core/cubit/cubit.dart';
import '../../core/widgets/bottom_sheet_widget.dart';
import '../../core/widgets/divider_widget.dart';
import '../../core/widgets/icon_button_widget.dart';
import '../../core/widgets/row_widget.dart';
import '../../core/widgets/text_button_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    int quantity = 1;
    int total = 2;
     bool isAdd = true;
    return BlocConsumer<AppCubit,AppStates>(

       builder: (context,state){
            var cubit = AppCubit.get(context);
        return Column(
          children: [
             const Spacer(),
             const DividerWidget(num: 1),
             CartItemWidget(
              image: AppAssets.cherry, 
              nameofItem: 'cherry', 
              isAdd: isAdd, 
              quantity: quantity, 
              total: total,
             reduceQuantity: (){   
             cubit.changeQuantity(isAdd: false, num: 1,);
             }, IncreaseQuantity: (){
             cubit.changeQuantity(isAdd: true, num: 1,);
             }),
             
             const DividerWidget(num: 15,),
              CartItemWidget(
              image: AppAssets.slushmango, 
              nameofItem: 'slush mango', 
              isAdd: isAdd, 
              quantity: quantity, 
              total: total,
             reduceQuantity: (){   
             cubit.changeQuantity(isAdd: false, num: 1,);
             }, IncreaseQuantity: (){
             cubit.changeQuantity(isAdd: true, num: 1,);
             }),
             
              const DividerWidget(num: 15,),

              CartItemWidget(
              image: AppAssets.rainbowcake, 
              nameofItem: 'rainbow cake', 
              isAdd: isAdd, 
              quantity: quantity, 
              total: total,
             reduceQuantity: (){   
             cubit.changeQuantity(isAdd: false, num: 1,);
             }, IncreaseQuantity: (){
             cubit.changeQuantity(isAdd: true, num: 1,);
             }),
             
             const DividerWidget(num: 15,),

             CartItemWidget(
              image: AppAssets.cherry, 
              nameofItem: 'cherry', 
              isAdd: isAdd, 
              quantity: quantity, 
              total: total,
             reduceQuantity: (){   
             cubit.changeQuantity(isAdd: false, num: 1,);
             }, IncreaseQuantity: (){
             cubit.changeQuantity(isAdd: true, num: 1,);
             }),
               const DividerWidget(num: 15,),

              CartItemWidget(
              image: AppAssets.watermelon, 
              nameofItem: 'watermelon', 
              isAdd: isAdd, 
              quantity: quantity, 
              total: total,
             reduceQuantity: (){   
             cubit.changeQuantity(isAdd: false, num: 1,);
             }, IncreaseQuantity: (){
             cubit.changeQuantity(isAdd: true, num: 1,);
             }),
             const Spacer(),
             Stack(
              //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Divider(),
                 Center(child: DefaultTextButton(
                  onPressed: ()
                  {
                     showMBtmSheet(
                      context: context,
                      rows: [
               RowWithIconWidget( 
                title: 'Checkout',
                iconBtnWidget: IconButtonWidget(
                      iconData: Icons.close,colorofBorder: Colors.grey[200],
                       onPressed:(){
                       Navigator.pop(context);
                       },  
                      colorofContainer: Colors.grey[200],
                      color: Colors.black87,
                      size: 25,
                     ),textColor:Colors.black87 ,textSize: 20,),
               const Divider(),
               RowForCheckOutWidget(
                title: 'Delivery', 
                iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],
                      colorofBorder: Colors.grey[200],
                      color: Colors.black87,
                      size: 14,
                     ), textColor:  Colors.black45, textSize: 16.0, widget: Text('select method'),),
               const Divider(),
                RowForCheckOutWidget(
                title: 'Payment', 
                iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],
                      colorofBorder: Colors.grey[200],
                      color: Colors.black87,
                      size: 14,
                     ), textColor:  Colors.black45, textSize: 16.0, widget: Icon(Icons.flag_outlined),),
               const Divider(), 
             RowForCheckOutWidget(
                title: 'Promo Code', 
                iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],
                      colorofBorder: Colors.grey[200],
                      color: Colors.black87,
                      size: 14,
                     ), textColor:  Colors.black45, textSize: 16.0, widget: Text('pick discount'),),
               const Divider(),
               RowForCheckOutWidget(
                 title: 'Total Cost',
                 iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],
                      colorofBorder: Colors.grey[200],
                      color: Colors.black87,
                      size: 14,
                     ),textColor:Colors.black45 ,textSize: 16, widget: Text('\$$total'),),
               
               const Divider(),
               rowWithOutIcon(text: 'by placing an order you agree to our terms and conditions',textSize: 10),
               const Spacer(),
               DefaultTextButton( text:'Place Order', onPressed: (){            Navigator.pushNamed(context,OrderAccepted.id);
}),
               const Spacer(),
            ],
             );
                  },text: 'Go to Checkout      \$$total')),
                 
               ],),
            
             const Spacer(),
            ]
          );
            
        
       },
      listener: (context,State)
      {
        if(State is IncrementQState)
        {
          quantity = AppCubit.get(context).quantity;
          total = AppCubit.get(context).sum;

        }
        else
        {
          quantity = AppCubit.get(context).quantity;
           total = AppCubit.get(context).sum;
        }
      },
    );
 
}

/*Row(
                 children: [
                 const Image(image: AssetImage(AppAssets.cherry,)),
                   
                   ],),*/

}/*Column(
                    children: [
                    RowWithIconWidget(title: 'cherry',
                    textColor:Colors.black ,textSize:15 , iconBtnWidget: IconButtonWidget(iconData: Icons.close, onPressed:(){} ),
                    ),
                    const  SizedBox(height: 5,),
                    const DefaultTextWidget(text: '1L, price', textColor: Colors.black38, textSize: 10.0),
                    Row( children: [
                      IconButtonWidget(iconData: Icons.reduce_capacity, onPressed: (){}),
                      Text('1'),
                       IconButtonWidget(iconData: Icons.add, onPressed: (){}),
                       Spacer(),
                       Text('\$12'),
                    ],
                    ),
                     
                   ],
                   )*/