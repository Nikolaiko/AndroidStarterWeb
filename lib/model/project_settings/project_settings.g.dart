// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectSettings _$ProjectSettingsFromJson(Map<String, dynamic> json) {
  return ProjectSettings(
    projectName: json['projectName'] as String,
    projectPackage: json['projectPackage'] as String,
    dslLanguage: json['dslLanguage'] as String,
  );
}

Map<String, dynamic> _$ProjectSettingsToJson(ProjectSettings instance) =>
    <String, dynamic>{
      'dslLanguage': instance.dslLanguage,
      'projectName': instance.projectName,
      'projectPackage': instance.projectPackage,
    };
