import 'package:android_starter_web/screens/widgets/project_settings_frames/configuration_widgets/dsl_language_selector.dart';
import 'package:flutter/material.dart';

class ProjectConfigurationFrame extends StatelessWidget {
  final Color _backColor;


  const ProjectConfigurationFrame(
    this._backColor,
    { Key? key }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backColor,
      child: Column(
        children: [
          DSLLanguageSelector()
        ]
      )
    );
  }
}