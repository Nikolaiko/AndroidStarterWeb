import 'package:android_starter_web/model/consts/string_consts.dart';
import 'package:android_starter_web/model/enum/dsl_language_enum.dart';
import 'package:android_starter_web/model/project_settings/dependencies_group.dart';
import 'package:android_starter_web/model/project_settings/project_dependencie.dart';
import 'package:android_starter_web/model/project_settings/project_settings.dart';
import 'package:android_starter_web/service/http_network_service.dart';
import 'package:android_starter_web/model/extensions/enums_extensions.dart';
import 'package:flutter/material.dart';

class SetupProjectState with ChangeNotifier {
  String _package = defaultPackage;
  String _projectName = defaultProjectName;
  List<ProjectDependencie> _dependencies = 
          List<ProjectDependencie>.empty(growable: true);

  String get projectName => _projectName;
  String get package => _package;
  List<ProjectDependencie> get addedDependencies => _dependencies;

  final HttpNetworkService _networkService;

  SetupProjectState(this._networkService);

  void updateName(String newName) {
    _projectName = newName;
    notifyListeners();
  }

  void updatePackage(String newPackage) {
    _package = newPackage;
    notifyListeners();
  }

  void generateProject() {
    _networkService.buildProject(
      ProjectSettings(
        dslLanguage: DslLanguage.groovy.toLanguageName(),
        projectName: _projectName,
        projectPackage: _package
      )
    );
  }

  void addDependency(ProjectDependencie dependencie) {
    _dependencies.add(dependencie);
    notifyListeners();
  }

  void removeDependency(ProjectDependencie dependencie) {
    _dependencies.remove(dependencie);
    notifyListeners();
  }

  bool needThisGroup(DependenciesGroup group) {
    bool need = false;
    for (ProjectDependencie dependencie in group.values) {
      if (!_dependencies.contains(dependencie)) {
        need = true;
        break;
      }
    } 
    return need;
  }

  bool needThisDependency(ProjectDependencie dependencie) {
    return !_dependencies.contains(dependencie);
  }
}