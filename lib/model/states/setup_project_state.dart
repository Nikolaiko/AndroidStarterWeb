import 'package:android_starter_web/model/consts/string_consts.dart';
import 'package:flutter/material.dart';

class SetupProjectState with ChangeNotifier {
  String _package = defaultPackage;
  String _projectName = defaultProjectName;

  String get projectName => _projectName;
  String get package => _package;

  void updateName(String newName) {
    _projectName = newName;
    notifyListeners();
  }

  void updatePackage(String newPackage) {
    _package = newPackage;
    notifyListeners();
  }

  void generateProject() {
    
  }
}