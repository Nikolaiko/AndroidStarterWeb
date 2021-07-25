import 'package:android_starter_web/model/enum/dsl_language_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project_settings.g.dart';

@JsonSerializable()
class ProjectSettings {
  final String dslLanguage;
  final String projectName;
  final String projectPackage;
  
  ProjectSettings(
    {      
      required this.projectName,
      required this.projectPackage,
      required this.dslLanguage
    }
  );

  factory ProjectSettings.fromJson(Map<String, dynamic> json) => _$ProjectSettingsFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectSettingsToJson(this);
}