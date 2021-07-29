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
    final MainScreenState screenState = Provider.of<MainScreenState>(context);
    final SetupProjectState projectState = Provider.of<SetupProjectState>(context);
    return Column(      
      children: [
        Expanded(
          child: Row(
            children: [
              _buildConfigurationFrame(screenState.mainBackgroundColor),
              const VerticalDivider(),
              _buildDependencesFrame(screenState.mainBackgroundColor)
            ]
          ),
        ),
        _buildBottomRow(projectState, context)
      ]
    );
  }

  Widget _buildDependencesFrame(Color backColor) {
    return const Flexible(
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

  Widget _buildBottomRow(
    SetupProjectState state,
    BuildContext context
    ) {
    return Container(
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SimpleTextButton(
              "GENERATE", 
              onPress: () => _generateButtonTap(state, context)
            ),
          )
        ]
      )
    );
  }

  void _generateButtonTap(
    SetupProjectState state,
    BuildContext context) {

    if (state.projectReady) {
      state.generateProject();
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text("Error"),
            content: Text("Set project name and package")  
          );
        }
      );
    }
  }
}