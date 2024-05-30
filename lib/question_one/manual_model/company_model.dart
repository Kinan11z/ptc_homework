// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:ptc_homework/question_one/manual_model/address_model.dart';
import 'package:ptc_homework/question_one/manual_model/department_model.dart';

class CompanyModel {
  bool is_active;
  String name;
  AddressModel address;
  String established;
  List<DepartmentModel> departments;
  CompanyModel({
    required this.is_active,
    required this.name,
    required this.address,
    required this.established,
    required this.departments,
  });

  CompanyModel copyWith({
    bool? is_active,
    String? name,
    AddressModel? address,
    String? established,
    List<DepartmentModel>? departments,
  }) {
    return CompanyModel(
      is_active: is_active ?? this.is_active,
      name: name ?? this.name,
      address: address ?? this.address,
      established: established ?? this.established,
      departments: departments ?? this.departments,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'is_active': is_active,
      'name': name,
      'address': address.toMap(),
      'established': established,
      'departments': departments.map((x) => x.toMap()).toList(),
    };
  }

  factory CompanyModel.fromMap(Map<String, dynamic> map) {
    return CompanyModel(
      is_active: map['is_active'] as bool,
      name: map['name'] as String,
      address: AddressModel.fromMap(map['address'] as Map<String, dynamic>),
      established: map['established'] as String,
      departments: List<DepartmentModel>.from(
        (map['departments'] as List<int>).map<DepartmentModel>(
          (x) => DepartmentModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyModel.fromJson(String source) =>
      CompanyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CompanyModel(is_active: $is_active, name: $name, address: $address, established: $established, departments: $departments)';
  }

  @override
  bool operator ==(covariant CompanyModel other) {
    if (identical(this, other)) return true;

    return other.is_active == is_active &&
        other.name == name &&
        other.address == address &&
        other.established == established &&
        listEquals(other.departments, departments);
  }

  @override
  int get hashCode {
    return is_active.hashCode ^
        name.hashCode ^
        address.hashCode ^
        established.hashCode ^
        departments.hashCode;
  }
}
