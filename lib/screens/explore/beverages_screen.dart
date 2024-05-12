import 'package:flutter/material.dart';
import 'package:test_app/core/styles/app_colors.dart';
import 'package:test_app/core/utils/app_assets.dart';
import 'package:test_app/core/widgets/product_item_widget.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/product_grid_widget.dart';


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
         capacity: '150mL'),
        ProductItemWidget(
        color: color1,
        image: AppAssets.coffee1, heightOfImg: 170, widthOfImg: 150, nameOfProduct: ' double coffee', capacity: '1L'),
        ProductItemWidget(
        color: color1,
        image: AppAssets.slushmango, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'slush mango', capacity: '1L'),
        ProductItemWidget(
        color: color1,
        image: AppAssets.slushstr, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'slush strawberry', capacity: '1L'),
        ProductItemWidget(
        color: color1,
        image: AppAssets.coffee2, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'coffee cub', capacity: '0.5mL'),
        ProductItemWidget(
        color: color1,
        image: AppAssets.cherryjuice2, heightOfImg: 170, widthOfImg: 150, nameOfProduct: 'cherry juice', capacity: '1L'),
      ]),
    );

       
  }
}
