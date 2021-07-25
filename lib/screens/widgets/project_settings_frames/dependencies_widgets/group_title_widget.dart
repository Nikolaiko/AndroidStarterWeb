import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:flutter/material.dart';

class GroupTitleWidget extends StatelessWidget {
  final String _titleName;
  final TextStyle _style;

  const GroupTitleWidget(
    this._titleName,
    this._style,
    { Key? key }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenDimensions dimensions = ScreenDimensions(context);
    return Padding(
      padding: EdgeInsets.all(dimensions.width * 0.01),
      child: Container(
        padding: EdgeInsets.all(dimensions.width * 0.005),
        color: Colors.green,
        child: Text(
          _titleName.toUpperCase(),
          style: _style,
        ),
      ),
    );
  }  
}