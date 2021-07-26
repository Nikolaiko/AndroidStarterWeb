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
    dependencies: (json['dependencies'] as List<dynamic>)
        .map((e) => ProjectDependencie.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProjectSettingsToJson(ProjectSettings instance) =>
    <String, dynamic>{
      'dslLanguage': instance.dslLanguage,
      'projectName': instance.projectName,
      'projectPackage': instance.projectPackage,
      'dependencies': instance.dependencies,
    };
