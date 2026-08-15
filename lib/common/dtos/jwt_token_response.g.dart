// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JwtTokenResponse _$JwtTokenResponseFromJson(Map<String, dynamic> json) =>
    _JwtTokenResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      phoneNumber: json['phoneNumber'] as String,
      firstName: json['firstName'] as String,
    );

Map<String, dynamic> _$JwtTokenResponseToJson(_JwtTokenResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'phoneNumber': instance.phoneNumber,
      'firstName': instance.firstName,
    };
