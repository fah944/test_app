import 'package:flutter/material.dart';

class DefaultTextWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;

  const DefaultTextWidget({super.key,required this.text, required this.textColor, required this.textSize});

  @override
  Widget build(BuildContext context) {
    return  Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: textColor, fontSize: textSize, height: 1,fontWeight: FontWeight.w500),
                );
  }
}