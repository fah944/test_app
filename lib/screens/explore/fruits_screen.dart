import 'package:flutter/material.dart';
import 'package:test_app/core/widgets/product_item_widget.dart';
import '../../core/styles/app_colors.dart';
import '../../core/utils/app_assets.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/bottom_sheet_widget.dart';
import '../../core/widgets/icon_button_widget.dart';
import '../../core/widgets/product_grid_widget.dart';
import '../../core/widgets/row_widget.dart';
import '../../core/widgets/text_button_widget.dart';

class FruitsScreen extends StatelessWidget {
  const FruitsScreen({super.key});
   static String id = "FruitsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title:'Fruits'),
      body: ProductGridWidget( productCount: 5,
      crossASpacing: 2,
      mainASpacing: 2,
      childAspectRatio: 1/1.80,
      children: [
        
        ProductItemWidget(
        color: color1,
        image: AppAssets.passion,
         heightOfImg: 170,
         widthOfImg: 150,
         nameOfProduct: 'passion',
         capacity: '1',onPressed: (){showMBtmSheet(
            context: context,
            rows: [   
              RowWithIconWidget( title: 'Add',iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.close,
                       onPressed:(){
                       Navigator.pop(context);
                       },  
                      colorofContainer: Colors.grey[200],                     colorofBorder: Colors.grey[200],

                      color: Colors.black87,
                      size: 25,
                     ),textColor:Colors.black87 ,textSize: 20,),
               const Divider(),
               rowWithOutIcon(text: 'name',textSize: 16),
               const Divider(),
               rowWithOutIcon(text: 'description',textSize: 16),
               const Divider(),
               rowWithOutIcon(text: 'price',textSize: 16),
               const Divider(),
               RowWithIconWidget(
                 title: 'image',
                 iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],                     colorofBorder: Colors.grey[200],

                      color: Colors.black87,
                      size: 14,
                     ),textColor:Colors.black45 ,textSize: 16,),
               
               const Divider(),
               const Spacer(),

               DefaultTextButton( text:'Add Item', onPressed: (){}),
               const Spacer(),
            ] );}
        ),
        ProductItemWidget(
        color: color1,
        image: AppAssets.peach, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'peach', capacity: '1',onPressed: (){
          showMBtmSheet(
            context: context,
            rows: [   
              RowWithIconWidget( title: 'Add',iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.close,
                       onPressed:(){
                       Navigator.pop(context);
                       },  
                      colorofContainer: Colors.grey[200],                     colorofBorder: Colors.grey[200],

                      color: Colors.black87,
                      size: 25,
                     ),textColor:Colors.black87 ,textSize: 20,),
               const Divider(),
               rowWithOutIcon(text: 'name',textSize: 16),
               const Divider(),
               rowWithOutIcon(text: 'description',textSize: 16),
               const Divider(),
               rowWithOutIcon(text: 'price',textSize: 16),
               const Divider(),
               RowWithIconWidget(
                 title: 'image',
                 iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],                     colorofBorder: Colors.grey[200],

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
        image: AppAssets.watermelon, 
        heightOfImg: 170, 
        widthOfImg: 150, 
        nameOfProduct: 'watermelon', 
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
                      colorofContainer: Colors.grey[200],                     colorofBorder: Colors.grey[200],

                      color: Colors.black87,
                      size: 25,
                     ),textColor:Colors.black87 ,textSize: 20,),
               const Divider(),
               rowWithOutIcon(text: 'name',textSize: 16),
               const Divider(),
               rowWithOutIcon(text: 'description',textSize: 16),
               const Divider(),
               rowWithOutIcon(text: 'price',textSize: 16),
               const Divider(),
               RowWithIconWidget(
                 title: 'image',
                 iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],                     colorofBorder: Colors.grey[200],

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
        image: AppAssets.cherry, 
        heightOfImg: 170, 
        widthOfImg: 150, 
        nameOfProduct: 'cherry', 
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
                      colorofContainer: Colors.grey[200],                     colorofBorder: Colors.grey[200],

                      color: Colors.black87,
                      size: 25,
                     ),textColor:Colors.black87 ,textSize: 20,),
               const Divider(),
               rowWithOutIcon(text: 'name',textSize: 16),
               const Divider(),
               rowWithOutIcon(text: 'description',textSize: 16),
               const Divider(),
               rowWithOutIcon(text: 'price',textSize: 16),
               const Divider(),
               RowWithIconWidget(
                 title: 'image',
                 iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],
                                           colorofBorder: Colors.grey[200],

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
        image: AppAssets.pineapple, 
        heightOfImg: 170, 
        widthOfImg: 150, 
        nameOfProduct: 'pineapple', 
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
                      colorofContainer: Colors.grey[200],                     colorofBorder: Colors.grey[200],

                      color: Colors.black87,
                      size: 25,
                     ),textColor:Colors.black87 ,textSize: 20,),
               const Divider(),
               rowWithOutIcon(text: 'name',textSize: 16),
               const Divider(),
               rowWithOutIcon(text: 'description',textSize: 16),
               const Divider(),
               rowWithOutIcon(text: 'price',textSize: 16),
               const Divider(),
               RowWithIconWidget(
                 title: 'image',
                 iconBtnWidget:  IconButtonWidget(
                      iconData: Icons.arrow_forward_ios_outlined,
                       onPressed:(){},  
                      colorofContainer: Colors.grey[200],                     colorofBorder: Colors.grey[200],

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