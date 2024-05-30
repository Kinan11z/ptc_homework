import 'package:json_annotation/json_annotation.dart';

part 'availability_model.g.dart';

@JsonSerializable()
class AvailabilityModel {
  bool online;
  bool instore;
  AvailabilityModel({
    required this.online,
    required this.instore,
  });
  factory AvailabilityModel.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityModelFromJson(json);
  Map<String, dynamic> toJson() => _$AvailabilityModelToJson(this);
}
