import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ptc_homework/question_one/freezed/address_model.dart';
import 'package:ptc_homework/question_one/freezed/department_model.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    @JsonKey(name: 'is_active') required bool isActive,
    required String name,
    required AddressModel address,
    required DateTime established,
    required List<DepartmentModel> departments,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
