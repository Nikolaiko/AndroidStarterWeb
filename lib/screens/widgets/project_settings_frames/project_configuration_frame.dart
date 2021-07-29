import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:android_starter_web/model/consts/string_consts.dart';
import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:android_starter_web/model/states/setup_project_state.dart';
import 'package:android_starter_web/screens/widgets/elements/flexible_text_field.dart';
import 'package:android_starter_web/screens/widgets/elements/flexible_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProjectConfigurationFrame extends StatelessWidget {
  static const int _lablelsFlex = 3;
  static const int _fieldsFlex = 7;

  final Color _backColor;


  const ProjectConfigurationFrame(
    this._backColor,
    { Key? key }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SetupProjectState state = Provider.of<SetupProjectState>(context, listen: false);
    final ScreenDimensions dimensions = ScreenDimensions(context);
    final EdgeInsets rowInsets = EdgeInsets.all(dimensions.width * sideInsetsCoff);
    final SizedBox insetSpace = SizedBox(width: dimensions.width * 0.01);

    return Container(
      color: _backColor,
      child: Column(
        children: [
          Padding(
            padding: rowInsets,
            child: Row(
              children: [
                const FlexibleTitle(projectLabel, flex: _lablelsFlex), 
                insetSpace,
                FlexibleTextField(
                  (newString) => state.updateName(newString),
                  flex: _fieldsFlex,
                  hintText: nameHint,
                  initialValue: state.projectName,
                )                
              ]
            ),
          ),
          Padding(
            padding: rowInsets,
            child: Row(
              children: [
                const FlexibleTitle(packageLabel, flex: _lablelsFlex),
                insetSpace,                
                FlexibleTextField(
                  (newString) => state.updatePackage(newString),
                  flex: _fieldsFlex,
                  hintText: packageHint,
                  initialValue: state.package,
                )
              ]
            )
          )
        ]
      )
    );
  }
}