import 'package:android_starter_web/model/project_settings/project_dependencie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dependencies_group.g.dart';

@JsonSerializable()
class DependenciesGroup {  
  final String name;
  final List<ProjectDependencie> values;
  
  DependenciesGroup(
    {            
      required this.name,
      required this.values
    }
  );

  factory DependenciesGroup.fromJson(Map<String, dynamic> json) => _$DependenciesGroupFromJson(json);
  Map<String, dynamic> toJson() => _$DependenciesGroupToJson(this);
}