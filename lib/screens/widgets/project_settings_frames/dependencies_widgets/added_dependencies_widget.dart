import 'package:android_starter_web/model/project_settings/project_dependencie.dart';
import 'package:android_starter_web/model/states/setup_project_state.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/dependencies_widgets/added_dependency_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddedDependenciesWidget extends StatelessWidget {
  const AddedDependenciesWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SetupProjectState state = Provider.of<SetupProjectState>(context);
    return Column(
      children: state.addedDependencies.map(
        (ProjectDependencie dependencie) => AddedDependencyWidget(dependencie)
      ).toList(),
    );
  }
}