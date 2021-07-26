import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:android_starter_web/model/states/setup_project_state.dart';
import 'package:android_starter_web/screens/widgets/elements/horizontal_divider.dart';
import 'package:android_starter_web/screens/widgets/elements/simple_text_button.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/dependencies_widgets/added_dependencies_widget.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/dependencies_widgets/dependencies_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProjectDepedenciesFrame extends StatelessWidget {
  const ProjectDepedenciesFrame({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SetupProjectState state = Provider.of<SetupProjectState>(context);
    final ScreenDimensions dimensions = ScreenDimensions(context);
    return Container(      
      child: Column(        
        children: [
          _buildButtonRow(context, state, dimensions),
          const HorizontalDivider(),
          const AddedDependenciesWidget()
        ]
      )
    );
  }

  Widget _buildButtonRow(
    BuildContext context, 
    SetupProjectState state,
    ScreenDimensions dimensions,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: dimensions.withoutSafeAreaHeight * 0.01,
        horizontal: dimensions.width * sideInsetsCoff
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Dependeces", style: titleTextStyle),
          SimpleTextButton(
            "ADD DEPENDENCES",
            onPress: () {
              showDialog(
                barrierDismissible: true,
                context: context, 
                builder: (_) {
                  return DependenciesDialog(state);
                }
              );
            }
          )
        ]
      ),
    );
  }
}