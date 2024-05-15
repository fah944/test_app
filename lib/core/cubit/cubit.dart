import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/core/cubit/states.dart';
import 'package:test_app/screens/cart/cart_screen.dart';
import 'package:test_app/screens/explore/explore_screen.dart';
import 'package:test_app/screens/favourite/favourite_screen.dart';
import 'package:test_app/screens/profile/profile_screen.dart';

class AppCubit extends Cubit<AppStates>
{
   AppCubit() : super(AppInitialState());
    static AppCubit get(context) => BlocProvider.of(context);


  int currentIndex = 0;
  static int index = 0;
    List<Widget> bottomScreens = [
     ExploreScreen(),
    const CartScreen(),
    const FavouriteScreen(),
    const ProfileScreen()
    
  ];

   List<BottomNavigationBarItem> items =
    [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.manage_search_outlined,
        size: 25.0,
        
      ),
      label: 'Explore',
      
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        //FontAwesomeIcons.cartPlus,
        Icons.add_home_outlined,
        size: 25.0,
      ),
      label: 'Cart',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite_border_outlined,
        size: 25.0,
      ),
      label: 'Favourite',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.person,
        size: 25.0,
      ),
      label: 'Profile',
    ),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }


  int quantity = 1 ;
  int sum = 2;
 bool isAdd=true;
 //IconData icon;
  void changeQuantity({required bool isAdd,required int num,})
  {
    if(isAdd){
      quantity += num;
      sum = sum+2;
      emit(IncrementQState());
    }else{
        quantity -= num;
        if(sum != 0){ sum = sum-2;}
        else {sum =0;
        quantity=0;}

        emit(ReduceQState());
    }
  }
}