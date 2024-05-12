import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_assets.dart';

import '../../core/styles/app_colors.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/product_grid_widget.dart';
import '../../core/widgets/product_item_widget.dart';

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
        ),
         ProductItemWidget(
        color: color1,
        image: AppAssets.hamburger3, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'hamburger', capacity: '1'),
        
        ProductItemWidget(
        color: color1,
        image: AppAssets.hamburger1, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'hamburger', capacity: '1'),
        ProductItemWidget(
        color: color1,
        image: AppAssets.friedchicken, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'fried chicken', capacity: '1'),
        
       ProductItemWidget(
        color: color1,
        image: AppAssets.pizza, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'pizza', capacity: '1'),
      ]),
    );
  }
}