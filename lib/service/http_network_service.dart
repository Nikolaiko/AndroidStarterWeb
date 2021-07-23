import 'dart:convert';
import 'dart:io';
import 'dart:js' as js;

import 'package:android_starter_web/model/project_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpNetworkService {
  static const _baseAddress = "192.168.1.170";
  static HttpClient httpClient = HttpClient();

  void buildProject(ProjectSettings settings) async {
    js.context.callMethod("open",
      ["http://81.177.6.197:49160/build/project?type=groovy&groupId=com.nikolaiko.test&artifactId=mapsTestProject&name=MapTest&description=Description&packageName=com.nikolaiko.test.mapsTestProject"]
    );
  }
}