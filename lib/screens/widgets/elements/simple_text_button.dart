import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:flutter/material.dart';

class SimpleTextButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPress;

  const SimpleTextButton(
    this.label,
    {
      this.onPress, 
      Key? key 
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(                  
        backgroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
            side: BorderSide(width: 2, color: Colors.black)
          )
        )
      ),
      onPressed: onPress, 
      child: Text(
        label, 
        style: buttonsTextStyle
      )
    );
  }
}