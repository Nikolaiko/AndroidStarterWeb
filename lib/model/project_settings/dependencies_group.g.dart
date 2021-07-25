// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependencies_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DependenciesGroup _$DependenciesGroupFromJson(Map<String, dynamic> json) {
  return DependenciesGroup(
    name: json['name'] as String,
    values: (json['values'] as List<dynamic>)
        .map((e) => ProjectDependencie.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DependenciesGroupToJson(DependenciesGroup instance) =>
    <String, dynamic>{
      'name': instance.name,
      'values': instance.values,
    };
