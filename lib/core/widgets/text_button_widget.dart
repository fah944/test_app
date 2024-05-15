import 'package:flutter/material.dart';
import 'package:test_app/core/widgets/text_widget.dart';

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
                child: DefaultTextWidget(text: text, textColor: Colors.white,textSize: 15)
                ),
             );
  }
}
