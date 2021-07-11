import 'package:json_annotation/json_annotation.dart';

part 'project_settings.g.dart';

@JsonSerializable()
class ProjectSettings {
  final String dslLanguage;
  
  ProjectSettings(
    {
      required this.dslLanguage
    }
  );

  factory ProjectSettings.fromJson(Map<String, dynamic> json) => _$ProjectSettingsFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectSettingsToJson(this);
}