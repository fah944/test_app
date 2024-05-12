import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/core/cubit/cubit.dart';
import 'package:test_app/core/cubit/states.dart';
import 'package:test_app/core/styles/app_colors.dart';
import 'package:test_app/core/utils/app_assets.dart';
import 'package:test_app/core/widgets/product_grid_widget.dart';
import 'package:test_app/screens/explore/Beverages_screen.dart';
import 'package:test_app/screens/explore/fast_food_screen.dart';
import 'package:test_app/screens/explore/fruits_screen.dart';
import '../../core/widgets/product_category_widget.dart';
import 'dssert_screen.dart';

class ExploreScreen extends StatelessWidget {
   ExploreScreen({super.key});

    

  @override
  Widget build(BuildContext context) {
   
 return BlocConsumer<AppCubit,AppStates>(
  builder: (context,state){
  return ProductGridWidget(
        productCount: 6,
        mainASpacing: 4.0,
        crossASpacing: 4.0,
        childAspectRatio:1 / 1.35,

       children: [
        ProductCategoryItemWidget(
          color: color1,
          image: AppAssets.beverages,
          heightOfImg: 170,
          widthOfImg: double.infinity,
          nameOfProduct: 'Beverages',
          onPressed: (){
            Navigator.pushNamed(context, BreveagesScreen.id);
           },),


        ProductCategoryItemWidget(
          color: color1,
          image: AppAssets.fastfood,
          heightOfImg: 170, 
          widthOfImg: double.infinity, 
          nameOfProduct: 'Fast Food', onPressed: (){
            Navigator.pushNamed(context, FastFoodScreen.id);
          },),

        ProductCategoryItemWidget(
          color: color1,
          image: AppAssets.cakepop,
          heightOfImg: 170, 
          widthOfImg: double.infinity, 
          nameOfProduct: 'Dssert', onPressed: (){
             Navigator.pushNamed(context, DssertScreen.id);
           
          },),

        ProductCategoryItemWidget(
          color: color1,
          image: AppAssets.fruits,
          heightOfImg: 170, 
          widthOfImg: double.infinity, 
          nameOfProduct: 'Fruits', onPressed: (){
             Navigator.pushNamed(context, FruitsScreen.id);
          },),
        
        ProductCategoryItemWidget(
          color: color1,
          image: AppAssets.other,
          heightOfImg: 170, 
          widthOfImg: double.infinity, 
          nameOfProduct: 'Other', onPressed: (){},),
       ],
    );
 }, listener: (context,state){});
  }
}

/*
Widget departmentBuilder(DepartmentHomeModel model, BuildContext context) =>
    SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.all(3.7),
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.count(
                clipBehavior: Clip.none,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 3.7,
                crossAxisSpacing: 3.7,
                childAspectRatio: 1 / 1.70,
                children: List.generate(
                    model.Department!.length,
                        (index) => buildGridDepartment(
                        model.Department![index], context, index))),
          ],
        ),
      ),
    );

Widget buildGridDepartment(
    DepartmentModel model, BuildContext context, int index) =>
    Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {
                  navigateTo(
                      context,
                      EditDepartmentScreen(
                        model: MedManageCubit.get(context).departmentHomeModel,
                        index: index,
                        //MedManageCubit.get(context).updateDepartmentModel;
                      ));
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 14.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Image(
            image: //AssetImage('assets/images/undraw_Female_avatar_efig (1).png'),
            NetworkImage('http://$ipAddress:8000/upload/${model.img}',
                scale: 10.0),
            width: double.infinity,
            height: 170.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: defaultColor, fontSize: 14.0, height: 1,fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      DateFormat.yMMMd()
                          .format(DateTime.parse((model.created_at))),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        MedManageCubit.get(context)
                            .deleteDepartment(id: model.id);
                      },
                      icon: const Icon(
                        Icons.delete,
                        size: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
*/