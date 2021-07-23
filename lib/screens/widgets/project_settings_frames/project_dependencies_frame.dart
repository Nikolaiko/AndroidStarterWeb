import 'package:android_starter_web/screens/widgets/elements/simple_text_button.dart';
import 'package:flutter/material.dart';

class ProjectDepedenciesFrame extends StatelessWidget {
  const ProjectDepedenciesFrame({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(        
        children: [
          _buildButtonRow()  
        ]
      )
    );
  }

  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Dependeces"),
        SimpleTextButton("ADD DEPENDENCES")
      ],
    );
  }
}