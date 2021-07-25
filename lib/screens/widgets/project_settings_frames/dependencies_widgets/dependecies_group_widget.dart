import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:android_starter_web/model/project_settings/dependencies_group.dart';
import 'package:android_starter_web/model/project_settings/project_dependencie.dart';
import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:android_starter_web/model/states/setup_project_state.dart';
import 'package:android_starter_web/screens/widgets/elements/horizontal_divider.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/dependencies_widgets/dependency_widget.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/dependencies_widgets/group_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DependenciesGroupWidget extends StatelessWidget {

  final DependenciesGroup _groupObject;

  const DependenciesGroupWidget(
    this._groupObject,
    { Key? key }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenDimensions dimensions = ScreenDimensions(context);
    final SetupProjectState state = Provider.of<SetupProjectState>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _buildWidgetsColumn(dimensions, state),
    );    
  }

  List<Widget> _buildWidgetsColumn(
    ScreenDimensions dimensions,
    SetupProjectState state
  ) {
    final List<Widget> result = List<Widget>.empty(growable: true);
    result.add(GroupTitleWidget(_groupObject.name, groupTitleTextStyle));
    result.add(const HorizontalDivider());

    for (ProjectDependencie dependency in _groupObject.values) {
      if (state.needThisDependency(dependency)) {
        result.add(DependencyWidget(dependency));
      }
    }
    return result;
  }
}