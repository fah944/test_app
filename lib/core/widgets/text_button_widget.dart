import 'package:flutter/material.dart';

import '../styles/app_colors.dart';


class DefaultTextButton extends StatelessWidget {

    final String text;
    final void Function() onPressed;
    DefaultTextButton({required this.text,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
              color: defaultColor,
              borderRadius: BorderRadius.circular(20)),
              height: 45,
              width: MediaQuery.of(context).size.width * .8,
              child: MaterialButton(
                onPressed:onPressed,
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15, 
                 
                  ),),),
             );
  }
}

/*
class TextButtonWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  const TextButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderRadius,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width * .9,
      height: 50,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .1,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        color: defaultColor,
        shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(26)),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}*/
