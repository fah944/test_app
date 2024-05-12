import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_assets.dart';

import '../../core/styles/app_colors.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/product_grid_widget.dart';
import '../../core/widgets/product_item_widget.dart';

class DssertScreen extends StatelessWidget {
  const DssertScreen({super.key});
   static String id = "DssertScreen";

  @override
  Widget build(BuildContext context) {
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
        ),
        ProductItemWidget(
        color: color1,
        image: AppAssets.icecreamcake, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'icecream cake', capacity: '1'),
        
        ProductItemWidget(
        color: color1,
        image: AppAssets.rainbowcake, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'rainbow cake', capacity: '1'),
        
        ProductItemWidget(
        color: color1,
        image: AppAssets.chocolate, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'chocolate', capacity: '1'),
      ]),
    );;
  }
}