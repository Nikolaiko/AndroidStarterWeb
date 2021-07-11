import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:flutter/material.dart';

class FlexibleTitle extends StatelessWidget {
  final String text;
  final int flex;  
  final TextAlign align;

  const FlexibleTitle(    
    this.text,
    { 
      this.flex = 1,      
      this.align = TextAlign.end,
      Key? key 
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex, 
      child: Text(
        text, 
        style: titleTextStyle,
        textAlign: align,
      )
    );
  }
}