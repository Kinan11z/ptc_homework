// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AddressModel {
  String street;
  String city;
  String state;
  String postalCode;
  AddressModel({
    required this.street,
    required this.city,
    required this.state,
    required this.postalCode,
  });

  AddressModel copyWith({
    String? street,
    String? city,
    String? state,
    String? postalCode,
  }) {
    return AddressModel(
      street: street ?? this.street,
      city: city ?? this.city,
      state: state ?? this.state,
      postalCode: postalCode ?? this.postalCode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'street': street,
      'city': city,
      'state': state,
      'postalCode': postalCode,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      street: map['street'] as String,
      city: map['city'] as String,
      state: map['state'] as String,
      postalCode: map['postalCode'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AddressModel(street: $street, city: $city, state: $state, postalCode: $postalCode)';
  }

  @override
  bool operator ==(covariant AddressModel other) {
    if (identical(this, other)) return true;

    return other.street == street &&
        other.city == city &&
        other.state == state &&
        other.postalCode == postalCode;
  }

  @override
  int get hashCode {
    return street.hashCode ^
        city.hashCode ^
        state.hashCode ^
        postalCode.hashCode;
  }
}
