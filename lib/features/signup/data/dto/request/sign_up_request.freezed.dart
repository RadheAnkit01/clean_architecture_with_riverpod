// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpRequest {

@JsonKey(name: 'firstName') String get firstName;@JsonKey(name: 'lastName') String? get lastName;@JsonKey(name: 'countryCode') String get countryCode;@JsonKey(name: 'phoneNumber') String get phoneNumber;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'gender') Gender get gender;@JsonKey(name: 'password') String get password;@JsonKey(name: 'acceptTerms') bool get acceptTerms;
/// Create a copy of SignUpRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRequestCopyWith<SignUpRequest> get copyWith => _$SignUpRequestCopyWithImpl<SignUpRequest>(this as SignUpRequest, _$identity);

  /// Serializes this SignUpRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequest&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.password, password) || other.password == password)&&(identical(other.acceptTerms, acceptTerms) || other.acceptTerms == acceptTerms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,countryCode,phoneNumber,email,gender,password,acceptTerms);

@override
String toString() {
  return 'SignUpRequest(firstName: $firstName, lastName: $lastName, countryCode: $countryCode, phoneNumber: $phoneNumber, email: $email, gender: $gender, password: $password, acceptTerms: $acceptTerms)';
}


}

/// @nodoc
abstract mixin class $SignUpRequestCopyWith<$Res>  {
  factory $SignUpRequestCopyWith(SignUpRequest value, $Res Function(SignUpRequest) _then) = _$SignUpRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'firstName') String firstName,@JsonKey(name: 'lastName') String? lastName,@JsonKey(name: 'countryCode') String countryCode,@JsonKey(name: 'phoneNumber') String phoneNumber,@JsonKey(name: 'email') String? email,@JsonKey(name: 'gender') Gender gender,@JsonKey(name: 'password') String password,@JsonKey(name: 'acceptTerms') bool acceptTerms
});




}
/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._self, this._then);

  final SignUpRequest _self;
  final $Res Function(SignUpRequest) _then;

/// Create a copy of SignUpRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = freezed,Object? countryCode = null,Object? phoneNumber = null,Object? email = freezed,Object? gender = null,Object? password = null,Object? acceptTerms = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,acceptTerms: null == acceptTerms ? _self.acceptTerms : acceptTerms // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpRequest].
extension SignUpRequestPatterns on SignUpRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpRequest value)  $default,){
final _that = this;
switch (_that) {
case _SignUpRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'firstName')  String firstName, @JsonKey(name: 'lastName')  String? lastName, @JsonKey(name: 'countryCode')  String countryCode, @JsonKey(name: 'phoneNumber')  String phoneNumber, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'gender')  Gender gender, @JsonKey(name: 'password')  String password, @JsonKey(name: 'acceptTerms')  bool acceptTerms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpRequest() when $default != null:
return $default(_that.firstName,_that.lastName,_that.countryCode,_that.phoneNumber,_that.email,_that.gender,_that.password,_that.acceptTerms);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'firstName')  String firstName, @JsonKey(name: 'lastName')  String? lastName, @JsonKey(name: 'countryCode')  String countryCode, @JsonKey(name: 'phoneNumber')  String phoneNumber, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'gender')  Gender gender, @JsonKey(name: 'password')  String password, @JsonKey(name: 'acceptTerms')  bool acceptTerms)  $default,) {final _that = this;
switch (_that) {
case _SignUpRequest():
return $default(_that.firstName,_that.lastName,_that.countryCode,_that.phoneNumber,_that.email,_that.gender,_that.password,_that.acceptTerms);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'firstName')  String firstName, @JsonKey(name: 'lastName')  String? lastName, @JsonKey(name: 'countryCode')  String countryCode, @JsonKey(name: 'phoneNumber')  String phoneNumber, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'gender')  Gender gender, @JsonKey(name: 'password')  String password, @JsonKey(name: 'acceptTerms')  bool acceptTerms)?  $default,) {final _that = this;
switch (_that) {
case _SignUpRequest() when $default != null:
return $default(_that.firstName,_that.lastName,_that.countryCode,_that.phoneNumber,_that.email,_that.gender,_that.password,_that.acceptTerms);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignUpRequest implements SignUpRequest {
  const _SignUpRequest({@JsonKey(name: 'firstName') required this.firstName, @JsonKey(name: 'lastName') this.lastName, @JsonKey(name: 'countryCode') required this.countryCode, @JsonKey(name: 'phoneNumber') required this.phoneNumber, @JsonKey(name: 'email') this.email, @JsonKey(name: 'gender') required this.gender, @JsonKey(name: 'password') required this.password, @JsonKey(name: 'acceptTerms') required this.acceptTerms});
  factory _SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);

@override@JsonKey(name: 'firstName') final  String firstName;
@override@JsonKey(name: 'lastName') final  String? lastName;
@override@JsonKey(name: 'countryCode') final  String countryCode;
@override@JsonKey(name: 'phoneNumber') final  String phoneNumber;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'gender') final  Gender gender;
@override@JsonKey(name: 'password') final  String password;
@override@JsonKey(name: 'acceptTerms') final  bool acceptTerms;

/// Create a copy of SignUpRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpRequestCopyWith<_SignUpRequest> get copyWith => __$SignUpRequestCopyWithImpl<_SignUpRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpRequest&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.password, password) || other.password == password)&&(identical(other.acceptTerms, acceptTerms) || other.acceptTerms == acceptTerms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,countryCode,phoneNumber,email,gender,password,acceptTerms);

@override
String toString() {
  return 'SignUpRequest(firstName: $firstName, lastName: $lastName, countryCode: $countryCode, phoneNumber: $phoneNumber, email: $email, gender: $gender, password: $password, acceptTerms: $acceptTerms)';
}


}

/// @nodoc
abstract mixin class _$SignUpRequestCopyWith<$Res> implements $SignUpRequestCopyWith<$Res> {
  factory _$SignUpRequestCopyWith(_SignUpRequest value, $Res Function(_SignUpRequest) _then) = __$SignUpRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'firstName') String firstName,@JsonKey(name: 'lastName') String? lastName,@JsonKey(name: 'countryCode') String countryCode,@JsonKey(name: 'phoneNumber') String phoneNumber,@JsonKey(name: 'email') String? email,@JsonKey(name: 'gender') Gender gender,@JsonKey(name: 'password') String password,@JsonKey(name: 'acceptTerms') bool acceptTerms
});




}
/// @nodoc
class __$SignUpRequestCopyWithImpl<$Res>
    implements _$SignUpRequestCopyWith<$Res> {
  __$SignUpRequestCopyWithImpl(this._self, this._then);

  final _SignUpRequest _self;
  final $Res Function(_SignUpRequest) _then;

/// Create a copy of SignUpRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = freezed,Object? countryCode = null,Object? phoneNumber = null,Object? email = freezed,Object? gender = null,Object? password = null,Object? acceptTerms = null,}) {
  return _then(_SignUpRequest(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,acceptTerms: null == acceptTerms ? _self.acceptTerms : acceptTerms // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
