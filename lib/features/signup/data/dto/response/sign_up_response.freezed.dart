// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpResponse {

@JsonKey(name: "firstName") String get firstName;@JsonKey(name: "lastName") String get lastName;@JsonKey(name: "gender") String get gender;@JsonKey(name: "fullPhoneNumber") String get fullPhoneNumber;@JsonKey(name: "countryName") String get countryName;
/// Create a copy of SignUpResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpResponseCopyWith<SignUpResponse> get copyWith => _$SignUpResponseCopyWithImpl<SignUpResponse>(this as SignUpResponse, _$identity);

  /// Serializes this SignUpResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpResponse&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.fullPhoneNumber, fullPhoneNumber) || other.fullPhoneNumber == fullPhoneNumber)&&(identical(other.countryName, countryName) || other.countryName == countryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,gender,fullPhoneNumber,countryName);

@override
String toString() {
  return 'SignUpResponse(firstName: $firstName, lastName: $lastName, gender: $gender, fullPhoneNumber: $fullPhoneNumber, countryName: $countryName)';
}


}

/// @nodoc
abstract mixin class $SignUpResponseCopyWith<$Res>  {
  factory $SignUpResponseCopyWith(SignUpResponse value, $Res Function(SignUpResponse) _then) = _$SignUpResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "firstName") String firstName,@JsonKey(name: "lastName") String lastName,@JsonKey(name: "gender") String gender,@JsonKey(name: "fullPhoneNumber") String fullPhoneNumber,@JsonKey(name: "countryName") String countryName
});




}
/// @nodoc
class _$SignUpResponseCopyWithImpl<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  _$SignUpResponseCopyWithImpl(this._self, this._then);

  final SignUpResponse _self;
  final $Res Function(SignUpResponse) _then;

/// Create a copy of SignUpResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? gender = null,Object? fullPhoneNumber = null,Object? countryName = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,fullPhoneNumber: null == fullPhoneNumber ? _self.fullPhoneNumber : fullPhoneNumber // ignore: cast_nullable_to_non_nullable
as String,countryName: null == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpResponse].
extension SignUpResponsePatterns on SignUpResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpResponse value)  $default,){
final _that = this;
switch (_that) {
case _SignUpResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "firstName")  String firstName, @JsonKey(name: "lastName")  String lastName, @JsonKey(name: "gender")  String gender, @JsonKey(name: "fullPhoneNumber")  String fullPhoneNumber, @JsonKey(name: "countryName")  String countryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpResponse() when $default != null:
return $default(_that.firstName,_that.lastName,_that.gender,_that.fullPhoneNumber,_that.countryName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "firstName")  String firstName, @JsonKey(name: "lastName")  String lastName, @JsonKey(name: "gender")  String gender, @JsonKey(name: "fullPhoneNumber")  String fullPhoneNumber, @JsonKey(name: "countryName")  String countryName)  $default,) {final _that = this;
switch (_that) {
case _SignUpResponse():
return $default(_that.firstName,_that.lastName,_that.gender,_that.fullPhoneNumber,_that.countryName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "firstName")  String firstName, @JsonKey(name: "lastName")  String lastName, @JsonKey(name: "gender")  String gender, @JsonKey(name: "fullPhoneNumber")  String fullPhoneNumber, @JsonKey(name: "countryName")  String countryName)?  $default,) {final _that = this;
switch (_that) {
case _SignUpResponse() when $default != null:
return $default(_that.firstName,_that.lastName,_that.gender,_that.fullPhoneNumber,_that.countryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignUpResponse implements SignUpResponse {
  const _SignUpResponse({@JsonKey(name: "firstName") required this.firstName, @JsonKey(name: "lastName") required this.lastName, @JsonKey(name: "gender") required this.gender, @JsonKey(name: "fullPhoneNumber") required this.fullPhoneNumber, @JsonKey(name: "countryName") required this.countryName});
  factory _SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);

@override@JsonKey(name: "firstName") final  String firstName;
@override@JsonKey(name: "lastName") final  String lastName;
@override@JsonKey(name: "gender") final  String gender;
@override@JsonKey(name: "fullPhoneNumber") final  String fullPhoneNumber;
@override@JsonKey(name: "countryName") final  String countryName;

/// Create a copy of SignUpResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpResponseCopyWith<_SignUpResponse> get copyWith => __$SignUpResponseCopyWithImpl<_SignUpResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpResponse&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.fullPhoneNumber, fullPhoneNumber) || other.fullPhoneNumber == fullPhoneNumber)&&(identical(other.countryName, countryName) || other.countryName == countryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,gender,fullPhoneNumber,countryName);

@override
String toString() {
  return 'SignUpResponse(firstName: $firstName, lastName: $lastName, gender: $gender, fullPhoneNumber: $fullPhoneNumber, countryName: $countryName)';
}


}

/// @nodoc
abstract mixin class _$SignUpResponseCopyWith<$Res> implements $SignUpResponseCopyWith<$Res> {
  factory _$SignUpResponseCopyWith(_SignUpResponse value, $Res Function(_SignUpResponse) _then) = __$SignUpResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "firstName") String firstName,@JsonKey(name: "lastName") String lastName,@JsonKey(name: "gender") String gender,@JsonKey(name: "fullPhoneNumber") String fullPhoneNumber,@JsonKey(name: "countryName") String countryName
});




}
/// @nodoc
class __$SignUpResponseCopyWithImpl<$Res>
    implements _$SignUpResponseCopyWith<$Res> {
  __$SignUpResponseCopyWithImpl(this._self, this._then);

  final _SignUpResponse _self;
  final $Res Function(_SignUpResponse) _then;

/// Create a copy of SignUpResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? gender = null,Object? fullPhoneNumber = null,Object? countryName = null,}) {
  return _then(_SignUpResponse(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,fullPhoneNumber: null == fullPhoneNumber ? _self.fullPhoneNumber : fullPhoneNumber // ignore: cast_nullable_to_non_nullable
as String,countryName: null == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
