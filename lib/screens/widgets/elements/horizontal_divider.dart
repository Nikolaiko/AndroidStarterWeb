import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenDimensions dimensions = ScreenDimensions(context);
    return Divider(
      indent: dimensions.width * sideInsetsCoff,
      endIndent: dimensions.width * sideInsetsCoff
    );
  }
}