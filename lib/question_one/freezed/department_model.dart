import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ptc_homework/question_one/freezed/availability_model.dart';
part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class DepartmentModel with _$DepartmentModel {
  const factory DepartmentModel({
    required String deptId,
    required String name,
    required String manager,
    required double budget,
    required int year,
    AvailabilityModel? availability,
    @JsonKey(name: 'meeting_time') required String meetingTime,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);
}
