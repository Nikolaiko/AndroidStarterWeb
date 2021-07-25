import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:android_starter_web/model/project_settings/project_dependencie.dart';
import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:android_starter_web/model/states/setup_project_state.dart';
import 'package:android_starter_web/screens/widgets/elements/horizontal_divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DependencyWidget extends StatelessWidget {
  static const double sideCoff = 0.02;
  static const double verticalCoff = 0.02;
  static const double betweenCoff = 0.01;

  final ProjectDependencie _dependencieObject;

  const DependencyWidget(
    this._dependencieObject,
    { Key? key }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenDimensions dimensions = ScreenDimensions(context);
    final double leftPadding = dimensions.width * sideCoff;
    final double verticalPadding = dimensions.withoutSafeAreaHeight * verticalCoff;
    final double betweenLinesPadding = dimensions.withoutSafeAreaHeight * betweenCoff;
    final SetupProjectState state = Provider.of<SetupProjectState>(context);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => state.addDependency(_dependencieObject),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: verticalPadding,
              bottom: betweenLinesPadding,
              left: leftPadding
            ),
            child: Text(_dependencieObject.name, style: titleTextStyle),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: verticalPadding,
              left: leftPadding
            ),
            child: Text(_dependencieObject.description),
          ),
          const HorizontalDivider()
        ],
      ),
    );
  }
}