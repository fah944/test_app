import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_assets.dart';
import 'package:test_app/core/widgets/icon_button_widget.dart';

import '../../core/styles/app_colors.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/bottom_sheet_widget.dart';
import '../../core/widgets/product_grid_widget.dart';
import '../../core/widgets/product_item_widget.dart';
import '../../core/widgets/row_widget.dart';
import '../../core/widgets/text_button_widget.dart';

class DssertScreen extends StatelessWidget {
  const DssertScreen({super.key});
   static String id = "DssertScreen";

  @override
  Widget build(BuildContext context) {

    ///void onPressed (context) => 
    return  Scaffold(
      appBar: appBar(title:'Dssert'),
      body: ProductGridWidget( productCount: 4,
      crossASpacing: 2,
      mainASpacing: 2,
      childAspectRatio: 1/1.80,
      children: [
 
        ProductItemWidget(
        color: color1,
        image: AppAssets.donuts,
         heightOfImg: 170,
         widthOfImg: 150,
         nameOfProduct: 'donuts',
         capacity: '1',
         onPressed: (){
           showMBtmSheet(
            context: context,
            rows: [   
              RowWithIconWidget( title: 'Add',iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.close,
                       onPressed:(){
                       Navigator.pop(context);
                       },  
                      colorofContainer: Colors.grey[200],
                      color: Colors.black87,
                      size: 25,
                     ),textColor:Colors.black87 ,textSize: 20,),
               const Divider(),
               rowWithOutIcon(text: 'name'),
               const Divider(),
               rowWithOutIcon(text: 'description'),
               const Divider(),
               rowWithOutIcon(text: 'price'),
               const Divider(),
               RowWithIconWidget(
                 title: 'image',
                 iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],
                      color: Colors.black87,
                      size: 14,
                     ),textColor:Colors.black45 ,textSize: 16,),
               
               const Divider(),
               const Spacer(),

               DefaultTextButton( text:'Add Item', onPressed: (){}),
               const Spacer(),
            ] );;
       
        },
        ),
        ProductItemWidget(
        color: color1,
        image: AppAssets.icecreamcake, 
        heightOfImg: 170, 
        widthOfImg: 150, 
        nameOfProduct: 'icecream cake', 
        capacity: '1', 
        onPressed: (){
          showMBtmSheet(
            context: context,
            rows: [   
              RowWithIconWidget( title: 'Add',iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.close,
                       onPressed:(){
                       Navigator.pop(context);
                       },  
                      colorofContainer: Colors.grey[200],
                      color: Colors.black87,
                      size: 25,
                     ),textColor:Colors.black87 ,textSize: 20,),
               const Divider(),
               rowWithOutIcon(text: 'name'),
               const Divider(),
               rowWithOutIcon(text: 'description'),
               const Divider(),
               rowWithOutIcon(text: 'price'),
               const Divider(),
               RowWithIconWidget(
                 title: 'image',
                 iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],
                      color: Colors.black87,
                      size: 14,
                     ),textColor:Colors.black45 ,textSize: 16,),
               
               const Divider(),
               const Spacer(),

               DefaultTextButton( text:'Add Item', onPressed: (){}),
               const Spacer(),
            ] );},),
        
        ProductItemWidget(
        color: color1,
        image: AppAssets.rainbowcake, 
        heightOfImg: 170, 
        widthOfImg: 150, 
        nameOfProduct: 'rainbow cake', 
        capacity: '1', 
        onPressed: (){
          showMBtmSheet(
            context: context,
            rows: [   
              RowWithIconWidget( title: 'Add',iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.close,
                       onPressed:(){
                       Navigator.pop(context);
                       },  
                      colorofContainer: Colors.grey[200],
                      color: Colors.black87,
                      size: 25,
                     ),textColor:Colors.black87 ,textSize: 20,),
               const Divider(),
               rowWithOutIcon(text: 'name'),
               const Divider(),
               rowWithOutIcon(text: 'description'),
               const Divider(),
               rowWithOutIcon(text: 'price'),
               const Divider(),
               RowWithIconWidget(
                 title: 'image',
                 iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],
                      color: Colors.black87,
                      size: 14,
                     ),textColor:Colors.black45 ,textSize: 16,),
               
               const Divider(),
               const Spacer(),

               DefaultTextButton( text:'Add Item', onPressed: (){}),
               const Spacer(),
            ] );},),
        
        ProductItemWidget(
        color: color1,
        image: AppAssets.chocolate, 
        heightOfImg: 170, 
        widthOfImg: 150, 
        nameOfProduct: 'chocolate', 
        capacity: '1', 
        onPressed: ()
        {
          showMBtmSheet(
            context: context,
            rows: [   
              RowWithIconWidget( title: 'Add',iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.close,
                       onPressed:(){
                       Navigator.pop(context);
                       },  
                      colorofContainer: Colors.grey[200],
                      color: Colors.black87,
                      size: 25,
                     ),textColor:Colors.black87 ,textSize: 20,),
               const Divider(),
               rowWithOutIcon(text: 'name'),
               const Divider(),
               rowWithOutIcon(text: 'description'),
               const Divider(),
               rowWithOutIcon(text: 'price'),
               const Divider(),
               RowWithIconWidget(
                 title: 'image',
                 iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],
                      color: Colors.black87,
                      size: 14,
                     ),textColor:Colors.black45 ,textSize: 16,),
               
               const Divider(),
               const Spacer(),
               DefaultTextButton( text:'Add Item', onPressed: (){}),
               const Spacer(),
            ] );},),
    ]),
    );
  }
}