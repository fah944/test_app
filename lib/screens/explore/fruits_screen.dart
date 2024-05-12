import 'package:flutter/material.dart';
import 'package:test_app/core/widgets/product_item_widget.dart';
import '../../core/styles/app_colors.dart';
import '../../core/utils/app_assets.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/product_grid_widget.dart';

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
         capacity: '1',
        ),
        ProductItemWidget(
        color: color1,
        image: AppAssets.peach, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'peach', capacity: '1'),
        
        ProductItemWidget(
        color: color1,
        image: AppAssets.watermelon, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'watermelon', capacity: '1'),
        ProductItemWidget(
        color: color1,
        image: AppAssets.cherry, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'cherry', capacity: '1'),
        
        ProductItemWidget(
        color: color1,
        image: AppAssets.pineapple, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'pineapple', capacity: '1'),
      ]),
    );;
  }
}