import 'package:android_starter_web/screens/widgets/project_settings_frames/project_configuration_frame.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/project_dependencies_frame.dart';
import 'package:flutter/material.dart';

class ProjectSettingsFrame extends StatelessWidget {
  const ProjectSettingsFrame({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: ProjectConfigurationFrame(),
        ),
        Flexible(
          flex: 1,                  
          child: ProjectDepedenciesFrame(),
        )
      ]
    );
  }
}