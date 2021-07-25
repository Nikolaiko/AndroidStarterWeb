import 'package:json_annotation/json_annotation.dart';

part 'project_dependencie.g.dart';

@JsonSerializable()
class ProjectDependencie {
  final String id;
  final String name;
  final String description;
  
  ProjectDependencie(
    {      
      required this.id,
      required this.name,
      required this.description
    }
  );

  factory ProjectDependencie.fromJson(Map<String, dynamic> json) => _$ProjectDependencieFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectDependencieToJson(this);
}