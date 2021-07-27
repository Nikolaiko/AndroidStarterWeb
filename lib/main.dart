import 'dart:convert';

import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:android_starter_web/model/project_settings/dependencies_group.dart';
import 'package:android_starter_web/model/states/main_screen_state.dart';
import 'package:android_starter_web/screens/loading_screen.dart';
import 'package:android_starter_web/screens/main_screen.dart';
import 'package:android_starter_web/service/di_service.dart';
import 'package:android_starter_web/service/http_network_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.instance.registerSingleton<HttpNetworkService>(HttpNetworkService());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Android Starter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        dividerColor: dividersColor,
        dividerTheme: const DividerThemeData(
          color: dividersColor,
          thickness: dividersThickness,
          space: dividersThickness
        )
      ),
      home: FutureBuilder(
        future: _prepareData(context),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.done
            ? _buildMainScreen(context)
            : const LoadingScreen();
        },
      )            
    );
  }

  Widget _buildMainScreen(BuildContext context) {
    return ChangeNotifierProvider<MainScreenState>(
      create: (context) {
        return MainScreenState();                
      },
      child: Consumer<MainScreenState>(
        builder: (context, value, child) => MainScreen()
      )
    );
  }

  Future<void> _prepareData(BuildContext context) async {
    final List<DependenciesGroup> result = List.empty(growable: true);
    final String jsonString = await DefaultAssetBundle.of(context).loadString("di.json");

    try {
      Map<String, dynamic> map = json.decode(jsonString) as Map<String, dynamic>;      
      List<dynamic> groups =  map["values"] as List<dynamic>;      
    
      groups.forEach((dynamic element) {         
        result.add(DependenciesGroup.fromJson(element as Map<String, dynamic>));
      });
    } catch (error) {
      print(error);
    }

    GetIt.instance.registerSingleton<DiService>(DiService(result));    
  } 
}
