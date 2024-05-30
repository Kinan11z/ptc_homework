import 'package:json_annotation/json_annotation.dart';
import 'package:ptc_homework/question_one/json_serializable/availability_model.dart';
part 'department_model.g.dart';

@JsonSerializable()
class DepartmentModel {
  String deptId;
  String name;
  String manager;
  int budget;
  int year;
  AvailabilityModel availability;
  @JsonKey(name: 'meeting_time')
  String meetingTime;
  DepartmentModel({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    required this.year,
    required this.availability,
    required this.meetingTime,
  });
  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);
  Map<String, dynamic> toJson() => _$DepartmentModelToJson(this);
}
