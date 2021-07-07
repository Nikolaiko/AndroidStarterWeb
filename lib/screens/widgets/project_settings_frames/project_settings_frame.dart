import 'package:android_starter_web/model/states/main_screen_state.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/project_configuration_frame.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/project_dependencies_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProjectSettingsFrame extends StatelessWidget {
  const ProjectSettingsFrame({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainScreenState state = Provider.of<MainScreenState>(context);
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: ProjectConfigurationFrame(
            state.mainBackgroundColor
          ),
        ),
        VerticalDivider(),
        Flexible(
          flex: 1,                  
          child: ProjectDepedenciesFrame(),
        )
      ]
    );
  }
}