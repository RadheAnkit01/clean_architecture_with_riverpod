// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    _SignUpRequest(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      countryCode: const CountryCodeConverter().fromJson(
        json['countryCode'] as String,
      ),
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String?,
      gender: const GenderConverter().fromJson(json['gender'] as String),
      password: json['password'] as String,
      acceptTerms: json['acceptTerms'] as bool,
    );

Map<String, dynamic> _$SignUpRequestToJson(_SignUpRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'countryCode': const CountryCodeConverter().toJson(instance.countryCode),
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'gender': const GenderConverter().toJson(instance.gender),
      'password': instance.password,
      'acceptTerms': instance.acceptTerms,
    };
