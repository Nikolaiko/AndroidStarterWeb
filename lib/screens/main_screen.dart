import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:android_starter_web/model/states/main_screen_state.dart';
import 'package:android_starter_web/model/states/setup_project_state.dart';
import 'package:android_starter_web/screens/widgets/main_frame.dart';
import 'package:android_starter_web/screens/widgets/theme_color_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    MainScreenState state = Provider.of<MainScreenState>(context);
    return Scaffold(
      body: ChangeNotifierProvider<SetupProjectState>(
        create: (context) {
          return SetupProjectState();
        },
        child: Container(
          color: state.mainBackgroundColor,
          child: Row(
            children: [
              Flexible(
                flex: 8,
                child: MainFrame()
              ),
              VerticalDivider(),
              Flexible(
                flex: 2,
                child: ThemeColorFrame()
              )          
            ]
          )
        ),
      ),
    );
  }
}