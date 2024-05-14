
  import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding:const EdgeInsetsDirectional.only(start: 2.0),
  child: Container(
    width:double.infinity,
    height:1.0,
    color:Colors.grey[300] ,
  ),);
  }
}