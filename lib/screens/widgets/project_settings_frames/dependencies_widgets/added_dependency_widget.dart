import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:android_starter_web/model/project_settings/project_dependencie.dart';
import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:android_starter_web/model/states/setup_project_state.dart';
import 'package:android_starter_web/screens/widgets/elements/horizontal_divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddedDependencyWidget extends StatelessWidget {
  static const double sideCoff = 0.02;
  static const double verticalCoff = 0.02;
  static const double betweenCoff = 0.01;

  final ProjectDependencie _dependencieObject;

  const AddedDependencyWidget(
    this._dependencieObject,
    { Key? key }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenDimensions dimensions = ScreenDimensions(context);
    final SetupProjectState state = Provider.of<SetupProjectState>(context);
    return Column(
      children: [
        Row(      
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: _buildTextColumn(dimensions)
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => state.removeDependency(_dependencieObject),
                child: const Center(          
                  child: Icon(Icons.remove_circle)
                ),
              ),
            )
          ]
        ),
        const HorizontalDivider()
      ]
    );        
  }

  Column _buildTextColumn(ScreenDimensions dimensions) {
    final double leftPadding = dimensions.width * sideCoff;
    final double verticalPadding = dimensions.withoutSafeAreaHeight * verticalCoff;
    final double betweenLinesPadding = dimensions.withoutSafeAreaHeight * betweenCoff;

    return Column(
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
        )        
      ]
    );
  }
}