import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:android_starter_web/model/states/main_screen_state.dart';
import 'package:android_starter_web/model/states/setup_project_state.dart';
import 'package:android_starter_web/screens/widgets/elements/horizontal_divider.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/project_settings_frame.dart';
import 'package:android_starter_web/screens/widgets/title_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainFrame extends StatelessWidget {
  const MainFrame({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    MainScreenState state = Provider.of<MainScreenState>(context);
    return Container(      
      color: state.mainBackgroundColor,
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: TitleFrame()
            ),
            const HorizontalDivider(),
            Flexible(
              flex: 9,
              child: Consumer<SetupProjectState>(
                builder: (context, value, child) => ProjectSettingsFrame()
              )              
            )
          ]
        )
    );
  }
}