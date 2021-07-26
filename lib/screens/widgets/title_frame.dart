import 'dart:html';

import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:android_starter_web/model/consts/string_consts.dart';
import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:android_starter_web/model/states/main_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleFrame extends StatelessWidget {
  const TitleFrame({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainScreenState state = Provider.of<MainScreenState>(context);
    final ScreenDimensions dimensions = ScreenDimensions(context);
    return Container(
      color: state.mainBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: dimensions.width * sideInsetsCoff
            ),
            child: const Text(appName, style: titleTextStyle),
          )
        ]
      ),
    );
  }
}