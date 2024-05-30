// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailabilityModelImpl _$$AvailabilityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityModelImpl(
      online: json['online'] as bool,
      inStore: json['inStore'] as bool,
    );

Map<String, dynamic> _$$AvailabilityModelImplToJson(
        _$AvailabilityModelImpl instance) =>
    <String, dynamic>{
      'online': instance.online,
      'inStore': instance.inStore,
    };
