import 'package:flutter/material.dart';
import 'package:test_app/core/styles/app_colors.dart';
import 'package:test_app/core/utils/app_assets.dart';
import 'package:test_app/core/widgets/product_item_widget.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/bottom_sheet_widget.dart';
import '../../core/widgets/icon_button_widget.dart';
import '../../core/widgets/product_grid_widget.dart';
import '../../core/widgets/row_widget.dart';
import '../../core/widgets/text_button_widget.dart';


class BreveagesScreen extends StatelessWidget {
  const BreveagesScreen({super.key});
   static String id = "BreveagesScreen";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title:'Breveages'),
      
      body: ProductGridWidget( productCount: 2,
      crossASpacing: 4,
      mainASpacing: 2,
      childAspectRatio: 1/1.75,
      children: [

        ProductItemWidget(
        color: color1,
        image: AppAssets.cherryjuice,
         heightOfImg: 170,
         widthOfImg: 150,
         nameOfProduct: 'cherry juice',
         capacity: '150mL',onPressed: ()
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
       ProductItemWidget(
        color: color1,
        image: AppAssets.coffee1, 
        heightOfImg: 170, 
        widthOfImg: 150, 
        nameOfProduct: 'double coffee', 
        capacity: '1L',
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
            ] );}),
        ProductItemWidget(
        color: color1,
        image: AppAssets.slushmango, 
        heightOfImg: 170, 
        widthOfImg: 150, 
        nameOfProduct: 'slush mango', 
        capacity: '1L',
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
            ] );}),
        ProductItemWidget(
        color: color1,
        image: AppAssets.slushstr,
        heightOfImg: 170, 
        widthOfImg: 150,
        nameOfProduct: 'slush strawberry',
        capacity: '1L',
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
            ] );}),
        ProductItemWidget(
         color: color1,
         image: AppAssets.coffee2,
         heightOfImg: 170,
         widthOfImg: 150,
         nameOfProduct: 'coffee cub',
         capacity: '0.5mL',
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
            ] );}),
        ProductItemWidget(
        color: color1,
        image: AppAssets.cherryjuice2,
        heightOfImg: 170,
        widthOfImg: 150,
        nameOfProduct: 'cherry juice',
        capacity: '1L',
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
            ] );}),
      ]),
    );

       
  }
}
