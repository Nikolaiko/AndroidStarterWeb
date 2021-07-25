import 'dart:math';

import 'package:android_starter_web/model/screen_dimensions.dart';
import 'package:android_starter_web/model/states/setup_project_state.dart';
import 'package:android_starter_web/screens/widgets/elements/simple_text_button.dart';
import 'package:android_starter_web/screens/widgets/project_settings_frames/dependencies_widgets/dependecies_group_widget.dart';
import 'package:android_starter_web/service/di_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class DependenciesDialog extends StatelessWidget {

  final DiService _diService = GetIt.instance.get<DiService>();
  final SetupProjectState _state;

  DependenciesDialog(
    this._state,
    { Key? key }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    final ScreenDimensions dimensions = ScreenDimensions(context);
    return ChangeNotifierProvider<SetupProjectState>.value(
      value: _state,
      builder: (context, child) {
        SetupProjectState state = Provider.of<SetupProjectState>(context);
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: dimensions.withoutSafeAreaHeight * 0.03,
            horizontal: dimensions.withoutSafeAreaHeight * 0.03,
          ),
          child: Container(
            color: Colors.white,
            child: Column(          
              children: _buildGroupWidgets(dimensions, state, context)
            ),
          ),
        );
      } 
    );
  }

  List<Widget> _buildGroupWidgets(
    ScreenDimensions dimensions,
    SetupProjectState state,
    BuildContext context
  ) {
    final List<Widget> result = List.empty(growable: true);
    
    _diService.groups.forEach((element) { 
      if (state.needThisGroup(element)) {
        result.add(DependenciesGroupWidget(element));
      }
    });

    result.add(const Spacer());
    result.add(_buildCloseButton(dimensions, context));

    return result;
  }

  Widget _buildCloseButton(
    ScreenDimensions dimensions, 
    BuildContext context
  ) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: dimensions.withoutSafeAreaHeight * 0.01
      ),
      child: SimpleTextButton(
        "Close", 
        onPress: () { Navigator.of(context).pop(); }
      ),
    );
  }
}