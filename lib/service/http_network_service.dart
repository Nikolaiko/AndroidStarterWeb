import 'dart:io';
import 'dart:js' as js;

import 'package:android_starter_web/model/project_settings/project_dependencie.dart';
import 'package:android_starter_web/model/project_settings/project_settings.dart';
import 'package:url_launcher/url_launcher.dart';

class HttpNetworkService {
  static const String _baseAddress = "https://project.android-starter.com/build/project";
  //static const String _baseAddress = "http://192.168.1.170:8091/build/project";
  static HttpClient httpClient = HttpClient();

  void buildProject(ProjectSettings settings) async {
    String dependenciesString = "";
    if (settings.dependencies.isNotEmpty) {
      for (ProjectDependencie dependencie in settings.dependencies) {
        if (dependenciesString.isNotEmpty) {
          dependenciesString += ",${dependencie.id}";
        } else {
          dependenciesString = "${dependencie.id}";
        }
      }
    }    

    final String _url = "$_baseAddress?type=${settings.dslLanguage}&name=${settings.projectName}&groupId=${settings.projectPackage}&dependencies=$dependenciesString";
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
    print(_url);

    // js.context.callMethod("open",
    //   List<String>.filled(
    //     1, 
    //     _url
    //   )
    // );
  }
}