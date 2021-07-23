import 'package:android_starter_web/model/consts/common_styles.dart';
import 'package:android_starter_web/model/states/main_screen_state.dart';
import 'package:android_starter_web/screens/main_screen.dart';
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
        dividerTheme: DividerThemeData(
          color: dividersColor,
          thickness: dividersThickness,
          space: dividersThickness
        )
      ),
      home: ChangeNotifierProvider<MainScreenState>(
        create: (context) {
          final state = MainScreenState();      
          return state;
        },
        child: Consumer<MainScreenState>(
          builder: (context, value, child) => MainScreen()
        )
      )
    );
  }
}
