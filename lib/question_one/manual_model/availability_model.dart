// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AvailabilityModel {
  bool online;
  bool instore;
  AvailabilityModel({
    required this.online,
    required this.instore,
  });

  AvailabilityModel copyWith({
    bool? online,
    bool? instore,
  }) {
    return AvailabilityModel(
      online: online ?? this.online,
      instore: instore ?? this.instore,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'online': online,
      'instore': instore,
    };
  }

  factory AvailabilityModel.fromMap(Map<String, dynamic> map) {
    return AvailabilityModel(
      online: map['online'] as bool,
      instore: map['instore'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory AvailabilityModel.fromJson(String source) =>
      AvailabilityModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AvailabilityModel(online: $online, instore: $instore)';

  @override
  bool operator ==(covariant AvailabilityModel other) {
    if (identical(this, other)) return true;

    return other.online == online && other.instore == instore;
  }

  @override
  int get hashCode => online.hashCode ^ instore.hashCode;
}
