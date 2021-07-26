import 'dart:io';
import 'dart:js' as js;

import 'package:android_starter_web/model/project_settings/project_dependencie.dart';
import 'package:android_starter_web/model/project_settings/project_settings.dart';

class HttpNetworkService {
  static const String _baseAddress = "http://81.177.6.197:49160/build/project";
  static HttpClient httpClient = HttpClient();

  void buildProject(ProjectSettings settings) async {
    String dependenciesString = "";
    for (ProjectDependencie dependencie in settings.dependencies) {
      if (dependenciesString.isNotEmpty) {
        dependenciesString += ",${dependencie.id}";
      } else {
        dependenciesString = "${dependencie.id}";
      }
    }

    js.context.callMethod("open",
      List<String>.filled(
        1, 
        "$_baseAddress?type=${settings.dslLanguage}&name=${settings.projectName}&packageName=${settings.projectPackage}&dependencies=$dependenciesString"
      )
    );
  }
}