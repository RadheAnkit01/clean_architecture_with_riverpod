// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginModel {

 String get phoneNumber; String get firstName; String get refreshToken; String get accessToken; bool get isLoginSuccess;
/// Create a copy of LoginModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginModelCopyWith<LoginModel> get copyWith => _$LoginModelCopyWithImpl<LoginModel>(this as LoginModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginModel&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.isLoginSuccess, isLoginSuccess) || other.isLoginSuccess == isLoginSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,firstName,refreshToken,accessToken,isLoginSuccess);

@override
String toString() {
  return 'LoginModel(phoneNumber: $phoneNumber, firstName: $firstName, refreshToken: $refreshToken, accessToken: $accessToken, isLoginSuccess: $isLoginSuccess)';
}


}

/// @nodoc
abstract mixin class $LoginModelCopyWith<$Res>  {
  factory $LoginModelCopyWith(LoginModel value, $Res Function(LoginModel) _then) = _$LoginModelCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, String firstName, String refreshToken, String accessToken, bool isLoginSuccess
});




}
/// @nodoc
class _$LoginModelCopyWithImpl<$Res>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._self, this._then);

  final LoginModel _self;
  final $Res Function(LoginModel) _then;

/// Create a copy of LoginModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? firstName = null,Object? refreshToken = null,Object? accessToken = null,Object? isLoginSuccess = null,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,isLoginSuccess: null == isLoginSuccess ? _self.isLoginSuccess : isLoginSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginModel].
extension LoginModelPatterns on LoginModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phoneNumber,  String firstName,  String refreshToken,  String accessToken,  bool isLoginSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginModel() when $default != null:
return $default(_that.phoneNumber,_that.firstName,_that.refreshToken,_that.accessToken,_that.isLoginSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phoneNumber,  String firstName,  String refreshToken,  String accessToken,  bool isLoginSuccess)  $default,) {final _that = this;
switch (_that) {
case _LoginModel():
return $default(_that.phoneNumber,_that.firstName,_that.refreshToken,_that.accessToken,_that.isLoginSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phoneNumber,  String firstName,  String refreshToken,  String accessToken,  bool isLoginSuccess)?  $default,) {final _that = this;
switch (_that) {
case _LoginModel() when $default != null:
return $default(_that.phoneNumber,_that.firstName,_that.refreshToken,_that.accessToken,_that.isLoginSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _LoginModel implements LoginModel {
  const _LoginModel({required this.phoneNumber, required this.firstName, required this.refreshToken, required this.accessToken, required this.isLoginSuccess});
  

@override final  String phoneNumber;
@override final  String firstName;
@override final  String refreshToken;
@override final  String accessToken;
@override final  bool isLoginSuccess;

/// Create a copy of LoginModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginModelCopyWith<_LoginModel> get copyWith => __$LoginModelCopyWithImpl<_LoginModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginModel&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.isLoginSuccess, isLoginSuccess) || other.isLoginSuccess == isLoginSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,firstName,refreshToken,accessToken,isLoginSuccess);

@override
String toString() {
  return 'LoginModel(phoneNumber: $phoneNumber, firstName: $firstName, refreshToken: $refreshToken, accessToken: $accessToken, isLoginSuccess: $isLoginSuccess)';
}


}

/// @nodoc
abstract mixin class _$LoginModelCopyWith<$Res> implements $LoginModelCopyWith<$Res> {
  factory _$LoginModelCopyWith(_LoginModel value, $Res Function(_LoginModel) _then) = __$LoginModelCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, String firstName, String refreshToken, String accessToken, bool isLoginSuccess
});




}
/// @nodoc
class __$LoginModelCopyWithImpl<$Res>
    implements _$LoginModelCopyWith<$Res> {
  __$LoginModelCopyWithImpl(this._self, this._then);

  final _LoginModel _self;
  final $Res Function(_LoginModel) _then;

/// Create a copy of LoginModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? firstName = null,Object? refreshToken = null,Object? accessToken = null,Object? isLoginSuccess = null,}) {
  return _then(_LoginModel(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,isLoginSuccess: null == isLoginSuccess ? _self.isLoginSuccess : isLoginSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
