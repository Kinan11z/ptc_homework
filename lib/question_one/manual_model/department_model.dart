// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ptc_homework/question_one/manual_model/availability_model.dart';

class DepartmentModel {
  String deptId;
  String name;
  String manager;
  int budget;
  int year;
  AvailabilityModel availability;
  String meeting_time;
  DepartmentModel({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    required this.year,
    required this.availability,
    required this.meeting_time,
  });

  DepartmentModel copyWith({
    String? deptId,
    String? name,
    String? manager,
    int? budget,
    int? year,
    AvailabilityModel? availability,
    String? meeting_time,
  }) {
    return DepartmentModel(
      deptId: deptId ?? this.deptId,
      name: name ?? this.name,
      manager: manager ?? this.manager,
      budget: budget ?? this.budget,
      year: year ?? this.year,
      availability: availability ?? this.availability,
      meeting_time: meeting_time ?? this.meeting_time,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deptId': deptId,
      'name': name,
      'manager': manager,
      'budget': budget,
      'year': year,
      'availability': availability.toMap(),
      'meeting_time': meeting_time,
    };
  }

  factory DepartmentModel.fromMap(Map<String, dynamic> map) {
    return DepartmentModel(
      deptId: map['deptId'] as String,
      name: map['name'] as String,
      manager: map['manager'] as String,
      budget: map['budget'] as int,
      year: map['year'] as int,
      availability: AvailabilityModel.fromMap(
          map['availability'] as Map<String, dynamic>),
      meeting_time: map['meeting_time'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DepartmentModel.fromJson(String source) =>
      DepartmentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DepartmentModel(deptId: $deptId, name: $name, manager: $manager, budget: $budget, year: $year, availability: $availability, meeting_time: $meeting_time)';
  }

  @override
  bool operator ==(covariant DepartmentModel other) {
    if (identical(this, other)) return true;

    return other.deptId == deptId &&
        other.name == name &&
        other.manager == manager &&
        other.budget == budget &&
        other.year == year &&
        other.availability == availability &&
        other.meeting_time == meeting_time;
  }

  @override
  int get hashCode {
    return deptId.hashCode ^
        name.hashCode ^
        manager.hashCode ^
        budget.hashCode ^
        year.hashCode ^
        availability.hashCode ^
        meeting_time.hashCode;
  }
}
