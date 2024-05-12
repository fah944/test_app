import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/core/cubit/cubit.dart';

import 'package:test_app/core/cubit/states.dart';
import 'package:test_app/core/styles/app_colors.dart';



class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
   static String id = "HomeScreen";

   @override
  Widget build(BuildContext context) {
    return Scaffold(
             body:BlocBuilder<AppCubit,AppStates>(
              builder: (context,state)
              {
                var cubit = AppCubit.get(context);
                return Scaffold(
                  body: cubit.bottomScreens[cubit.currentIndex],
                  bottomNavigationBar: BottomNavigationBar(
                  selectedItemColor: defaultColor,
                  unselectedItemColor: Colors.black87,
                   type: BottomNavigationBarType.fixed,
                   elevation: 4,
                  currentIndex: cubit.currentIndex,
                  onTap: (index) 
                  {
                    cubit.currentIndex = index;
                    print(index);
                    cubit.changeBottom(index);
                },
                items: cubit.items,
                ),);
              },
             ),
          );
       
  }
}