import 'dart:io';
import 'dart:js' as js;

import 'package:android_starter_web/model/project_settings/project_settings.dart';

class HttpNetworkService {
  static const _baseAddress = "192.168.1.170";
  static HttpClient httpClient = HttpClient();

  void buildProject(ProjectSettings settings) async {
    js.context.callMethod("open",
      List<String>.filled(1, "http://81.177.6.197:49160/build/project?type=groovy&groupId=com.nikolaiko.test&artifactId=mapsTestProject&name=MapTest&description=Description&packageName=com.nikolaiko.test.mapsTestProject")
    );
  }
}