import 'package:android_starter_web/model/states/main_screen_state.dart';
import 'package:android_starter_web/model/states/setup_project_state.dart';
import 'package:android_starter_web/screens/widgets/elements/simple_text_button.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/project_configuration_frame.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/project_dependencies_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProjectSettingsFrame extends StatelessWidget {
  const ProjectSettingsFrame({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainScreenState screenState = Provider.of<MainScreenState>(context);
    SetupProjectState projectState = Provider.of<SetupProjectState>(context);
    return Column(      
      children: [
        Expanded(
          child: Row(
            children: [
              _buildConfigurationFrame(screenState.mainBackgroundColor),
              VerticalDivider(),
              _buildDependencesFrame(screenState.mainBackgroundColor)
            ]
          ),
        ),
        _buildBottomRow(projectState)
      ]
    );
  }

  Widget _buildDependencesFrame(Color backColor) {
    return Flexible(
      flex: 1,                  
      child: ProjectDepedenciesFrame()
    );
  }

  Widget _buildConfigurationFrame(Color backColor) {
    return Flexible(
      flex: 1,
      child: ProjectConfigurationFrame(backColor)
    );
  }

  Widget _buildBottomRow(SetupProjectState state) {
    return Container(
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SimpleTextButton(
              "GENERATE", 
              onPress: state.generateProject
            ),
          )
        ]
      )
    );
  }
}