// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpModel {

 String get firstName; String? get lastName; Gender get gender; String get fullPhoneNumber; bool get isSignUpSuccess;
/// Create a copy of SignUpModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpModelCopyWith<SignUpModel> get copyWith => _$SignUpModelCopyWithImpl<SignUpModel>(this as SignUpModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.fullPhoneNumber, fullPhoneNumber) || other.fullPhoneNumber == fullPhoneNumber)&&(identical(other.isSignUpSuccess, isSignUpSuccess) || other.isSignUpSuccess == isSignUpSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,gender,fullPhoneNumber,isSignUpSuccess);

@override
String toString() {
  return 'SignUpModel(firstName: $firstName, lastName: $lastName, gender: $gender, fullPhoneNumber: $fullPhoneNumber, isSignUpSuccess: $isSignUpSuccess)';
}


}

/// @nodoc
abstract mixin class $SignUpModelCopyWith<$Res>  {
  factory $SignUpModelCopyWith(SignUpModel value, $Res Function(SignUpModel) _then) = _$SignUpModelCopyWithImpl;
@useResult
$Res call({
 String firstName, String? lastName, Gender gender, String fullPhoneNumber, bool isSignUpSuccess
});




}
/// @nodoc
class _$SignUpModelCopyWithImpl<$Res>
    implements $SignUpModelCopyWith<$Res> {
  _$SignUpModelCopyWithImpl(this._self, this._then);

  final SignUpModel _self;
  final $Res Function(SignUpModel) _then;

/// Create a copy of SignUpModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = freezed,Object? gender = null,Object? fullPhoneNumber = null,Object? isSignUpSuccess = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,fullPhoneNumber: null == fullPhoneNumber ? _self.fullPhoneNumber : fullPhoneNumber // ignore: cast_nullable_to_non_nullable
as String,isSignUpSuccess: null == isSignUpSuccess ? _self.isSignUpSuccess : isSignUpSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpModel].
extension SignUpModelPatterns on SignUpModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpModel value)  $default,){
final _that = this;
switch (_that) {
case _SignUpModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpModel value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String? lastName,  Gender gender,  String fullPhoneNumber,  bool isSignUpSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.gender,_that.fullPhoneNumber,_that.isSignUpSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String? lastName,  Gender gender,  String fullPhoneNumber,  bool isSignUpSuccess)  $default,) {final _that = this;
switch (_that) {
case _SignUpModel():
return $default(_that.firstName,_that.lastName,_that.gender,_that.fullPhoneNumber,_that.isSignUpSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String? lastName,  Gender gender,  String fullPhoneNumber,  bool isSignUpSuccess)?  $default,) {final _that = this;
switch (_that) {
case _SignUpModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.gender,_that.fullPhoneNumber,_that.isSignUpSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpModel implements SignUpModel {
  const _SignUpModel({required this.firstName, this.lastName, required this.gender, required this.fullPhoneNumber, required this.isSignUpSuccess});
  

@override final  String firstName;
@override final  String? lastName;
@override final  Gender gender;
@override final  String fullPhoneNumber;
@override final  bool isSignUpSuccess;

/// Create a copy of SignUpModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpModelCopyWith<_SignUpModel> get copyWith => __$SignUpModelCopyWithImpl<_SignUpModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.fullPhoneNumber, fullPhoneNumber) || other.fullPhoneNumber == fullPhoneNumber)&&(identical(other.isSignUpSuccess, isSignUpSuccess) || other.isSignUpSuccess == isSignUpSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,gender,fullPhoneNumber,isSignUpSuccess);

@override
String toString() {
  return 'SignUpModel(firstName: $firstName, lastName: $lastName, gender: $gender, fullPhoneNumber: $fullPhoneNumber, isSignUpSuccess: $isSignUpSuccess)';
}


}

/// @nodoc
abstract mixin class _$SignUpModelCopyWith<$Res> implements $SignUpModelCopyWith<$Res> {
  factory _$SignUpModelCopyWith(_SignUpModel value, $Res Function(_SignUpModel) _then) = __$SignUpModelCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String? lastName, Gender gender, String fullPhoneNumber, bool isSignUpSuccess
});




}
/// @nodoc
class __$SignUpModelCopyWithImpl<$Res>
    implements _$SignUpModelCopyWith<$Res> {
  __$SignUpModelCopyWithImpl(this._self, this._then);

  final _SignUpModel _self;
  final $Res Function(_SignUpModel) _then;

/// Create a copy of SignUpModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = freezed,Object? gender = null,Object? fullPhoneNumber = null,Object? isSignUpSuccess = null,}) {
  return _then(_SignUpModel(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,fullPhoneNumber: null == fullPhoneNumber ? _self.fullPhoneNumber : fullPhoneNumber // ignore: cast_nullable_to_non_nullable
as String,isSignUpSuccess: null == isSignUpSuccess ? _self.isSignUpSuccess : isSignUpSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
