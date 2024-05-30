import 'package:json_annotation/json_annotation.dart';
import 'package:ptc_homework/question_one/json_serializable/address_model.dart';
import 'package:ptc_homework/question_one/json_serializable/department_model.dart';
part 'company_model.g.dart';

@JsonSerializable()
class CompanyModel {
  @JsonKey(name: 'is_active')
  bool isActive;
  String name;
  AddressModel address;
  String established;
  List<DepartmentModel> departments;
  CompanyModel({
    required this.isActive,
    required this.name,
    required this.address,
    required this.established,
    required this.departments,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}
