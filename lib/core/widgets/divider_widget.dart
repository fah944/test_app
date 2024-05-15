
  import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key,required this.num});
final double num;
  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: EdgeInsetsDirectional.only(start: num),///2
  child: Container(
    width:double.infinity,
    height:1.0,
    color:Colors.grey[300] ,
  ),);
  }
}