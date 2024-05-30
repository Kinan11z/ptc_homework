// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailabilityModel _$AvailabilityModelFromJson(Map<String, dynamic> json) =>
    AvailabilityModel(
      online: json['online'] as bool,
      instore: json['instore'] as bool,
    );

Map<String, dynamic> _$AvailabilityModelToJson(AvailabilityModel instance) =>
    <String, dynamic>{
      'online': instance.online,
      'instore': instance.instore,
    };
