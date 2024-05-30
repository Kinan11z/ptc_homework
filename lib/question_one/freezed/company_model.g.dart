// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    _$CompanyModelImpl(
      isActive: json['is_active'] as bool,
      name: json['name'] as String,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      established: DateTime.parse(json['established'] as String),
      departments: (json['departments'] as List<dynamic>)
          .map((e) => DepartmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'is_active': instance.isActive,
      'name': instance.name,
      'address': instance.address,
      'established': instance.established.toIso8601String(),
      'departments': instance.departments,
    };
