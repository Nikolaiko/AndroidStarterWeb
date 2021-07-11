import 'package:android_starter_web/model/callback_types.dart';
import 'package:flutter/material.dart';

class FlexibleTextField extends StatelessWidget {

  final StringChangeCallback onChange;
  final int flex;
  final String? hintText;
  final String? initialValue;

  const FlexibleTextField(
    this.onChange,
    { 
      this.flex = 1,
      this.hintText,
      this.initialValue,
      Key? key
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: initialValue);

    return Flexible(
      flex: flex,
      child: TextField(   
        controller: controller,                 
        decoration: InputDecoration(                                            
          hintText: hintText
        ),
        onChanged: onChange
      )
    );
  }
}