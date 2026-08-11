// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    _SignUpRequest(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      countryCode: json['countryCode'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String?,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      password: json['password'] as String,
      acceptTerms: json['acceptTerms'] as bool,
      country: $enumDecode(_$CountryEnumMap, json['country']),
    );

Map<String, dynamic> _$SignUpRequestToJson(_SignUpRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'countryCode': instance.countryCode,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'gender': _$GenderEnumMap[instance.gender]!,
      'password': instance.password,
      'acceptTerms': instance.acceptTerms,
      'country': _$CountryEnumMap[instance.country]!,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$CountryEnumMap = {
  Country.india: 'india',
  Country.usa: 'usa',
  Country.uk: 'uk',
  Country.canada: 'canada',
};
