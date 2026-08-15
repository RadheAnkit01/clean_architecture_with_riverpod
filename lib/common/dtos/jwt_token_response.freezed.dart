// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JwtTokenResponse {

@JsonKey(name: "accessToken") String get accessToken;@JsonKey(name: "refreshToken") String get refreshToken;@JsonKey(name: "phoneNumber") String get phoneNumber;@JsonKey(name: "firstName") String get firstName;
/// Create a copy of JwtTokenResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JwtTokenResponseCopyWith<JwtTokenResponse> get copyWith => _$JwtTokenResponseCopyWithImpl<JwtTokenResponse>(this as JwtTokenResponse, _$identity);

  /// Serializes this JwtTokenResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JwtTokenResponse&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,phoneNumber,firstName);

@override
String toString() {
  return 'JwtTokenResponse(accessToken: $accessToken, refreshToken: $refreshToken, phoneNumber: $phoneNumber, firstName: $firstName)';
}


}

/// @nodoc
abstract mixin class $JwtTokenResponseCopyWith<$Res>  {
  factory $JwtTokenResponseCopyWith(JwtTokenResponse value, $Res Function(JwtTokenResponse) _then) = _$JwtTokenResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "accessToken") String accessToken,@JsonKey(name: "refreshToken") String refreshToken,@JsonKey(name: "phoneNumber") String phoneNumber,@JsonKey(name: "firstName") String firstName
});




}
/// @nodoc
class _$JwtTokenResponseCopyWithImpl<$Res>
    implements $JwtTokenResponseCopyWith<$Res> {
  _$JwtTokenResponseCopyWithImpl(this._self, this._then);

  final JwtTokenResponse _self;
  final $Res Function(JwtTokenResponse) _then;

/// Create a copy of JwtTokenResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? phoneNumber = null,Object? firstName = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [JwtTokenResponse].
extension JwtTokenResponsePatterns on JwtTokenResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JwtTokenResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JwtTokenResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JwtTokenResponse value)  $default,){
final _that = this;
switch (_that) {
case _JwtTokenResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JwtTokenResponse value)?  $default,){
final _that = this;
switch (_that) {
case _JwtTokenResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "accessToken")  String accessToken, @JsonKey(name: "refreshToken")  String refreshToken, @JsonKey(name: "phoneNumber")  String phoneNumber, @JsonKey(name: "firstName")  String firstName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JwtTokenResponse() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.phoneNumber,_that.firstName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "accessToken")  String accessToken, @JsonKey(name: "refreshToken")  String refreshToken, @JsonKey(name: "phoneNumber")  String phoneNumber, @JsonKey(name: "firstName")  String firstName)  $default,) {final _that = this;
switch (_that) {
case _JwtTokenResponse():
return $default(_that.accessToken,_that.refreshToken,_that.phoneNumber,_that.firstName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "accessToken")  String accessToken, @JsonKey(name: "refreshToken")  String refreshToken, @JsonKey(name: "phoneNumber")  String phoneNumber, @JsonKey(name: "firstName")  String firstName)?  $default,) {final _that = this;
switch (_that) {
case _JwtTokenResponse() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.phoneNumber,_that.firstName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JwtTokenResponse implements JwtTokenResponse {
  const _JwtTokenResponse({@JsonKey(name: "accessToken") required this.accessToken, @JsonKey(name: "refreshToken") required this.refreshToken, @JsonKey(name: "phoneNumber") required this.phoneNumber, @JsonKey(name: "firstName") required this.firstName});
  factory _JwtTokenResponse.fromJson(Map<String, dynamic> json) => _$JwtTokenResponseFromJson(json);

@override@JsonKey(name: "accessToken") final  String accessToken;
@override@JsonKey(name: "refreshToken") final  String refreshToken;
@override@JsonKey(name: "phoneNumber") final  String phoneNumber;
@override@JsonKey(name: "firstName") final  String firstName;

/// Create a copy of JwtTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JwtTokenResponseCopyWith<_JwtTokenResponse> get copyWith => __$JwtTokenResponseCopyWithImpl<_JwtTokenResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JwtTokenResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JwtTokenResponse&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,phoneNumber,firstName);

@override
String toString() {
  return 'JwtTokenResponse(accessToken: $accessToken, refreshToken: $refreshToken, phoneNumber: $phoneNumber, firstName: $firstName)';
}


}

/// @nodoc
abstract mixin class _$JwtTokenResponseCopyWith<$Res> implements $JwtTokenResponseCopyWith<$Res> {
  factory _$JwtTokenResponseCopyWith(_JwtTokenResponse value, $Res Function(_JwtTokenResponse) _then) = __$JwtTokenResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "accessToken") String accessToken,@JsonKey(name: "refreshToken") String refreshToken,@JsonKey(name: "phoneNumber") String phoneNumber,@JsonKey(name: "firstName") String firstName
});




}
/// @nodoc
class __$JwtTokenResponseCopyWithImpl<$Res>
    implements _$JwtTokenResponseCopyWith<$Res> {
  __$JwtTokenResponseCopyWithImpl(this._self, this._then);

  final _JwtTokenResponse _self;
  final $Res Function(_JwtTokenResponse) _then;

/// Create a copy of JwtTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? phoneNumber = null,Object? firstName = null,}) {
  return _then(_JwtTokenResponse(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
