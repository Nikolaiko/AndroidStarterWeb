import 'package:android_starter_web/model/consts/string_consts.dart';
import 'package:android_starter_web/model/states/main_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleFrame extends StatelessWidget {
  const TitleFrame({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainScreenState state = Provider.of<MainScreenState>(context);
    return Container(
      color: state.mainBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(appName)
        ]
      ),
    );
  }
}