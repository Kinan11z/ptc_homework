// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) => CompanyModel(
      isActive: json['is_active'] as bool,
      name: json['name'] as String,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      established: json['established'] as String,
      departments: (json['departments'] as List<dynamic>)
          .map((e) => DepartmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompanyModelToJson(CompanyModel instance) =>
    <String, dynamic>{
      'is_active': instance.isActive,
      'name': instance.name,
      'address': instance.address,
      'established': instance.established,
      'departments': instance.departments,
    };
