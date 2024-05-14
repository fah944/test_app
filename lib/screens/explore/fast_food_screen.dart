import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_assets.dart';

import '../../core/styles/app_colors.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/bottom_sheet_widget.dart';
import '../../core/widgets/icon_button_widget.dart';
import '../../core/widgets/product_grid_widget.dart';
import '../../core/widgets/product_item_widget.dart';
import '../../core/widgets/row_widget.dart';
import '../../core/widgets/text_button_widget.dart';

class FastFoodScreen extends StatelessWidget {
  const FastFoodScreen({super.key});
 static String id = "FastFoodScreen";
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: appBar(title:'Fast Food'),
      body: ProductGridWidget( productCount: 5,
      crossASpacing: 2,
      mainASpacing: 2,
      childAspectRatio: 1/1.80,
      children: [
      
        ProductItemWidget(
        color: color1,
        image: AppAssets.shawarma,
         heightOfImg: 170,
         widthOfImg: 150,
         nameOfProduct: 'shawarma',
         capacity: '1',
          onPressed: (){showMBtmSheet(
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
            ] );}
        ),
        ProductItemWidget(
        color: color1,
        image: AppAssets.hamburger3, 
        heightOfImg: 170, 
        widthOfImg: 150, 
        nameOfProduct: 'hamburger', 
        capacity: '1', 
        onPressed: (){showMBtmSheet(
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
        image: AppAssets.hamburger1, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'hamburger', capacity: '1', onPressed: (){showMBtmSheet(
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
        image: AppAssets.friedchicken, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'fried chicken', capacity: '1', onPressed: (){showMBtmSheet(
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
        image: AppAssets.pizza, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'pizza', capacity: '1',onPressed: (){
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