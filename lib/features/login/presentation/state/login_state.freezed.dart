// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 LoginModel? get loginModel; bool? get isLoginSuccess; bool get isLoading; String? get error; Map<String, dynamic> get loginForm;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.loginModel, loginModel) || other.loginModel == loginModel)&&(identical(other.isLoginSuccess, isLoginSuccess) || other.isLoginSuccess == isLoginSuccess)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.loginForm, loginForm));
}


@override
int get hashCode => Object.hash(runtimeType,loginModel,isLoginSuccess,isLoading,error,const DeepCollectionEquality().hash(loginForm));

@override
String toString() {
  return 'LoginState(loginModel: $loginModel, isLoginSuccess: $isLoginSuccess, isLoading: $isLoading, error: $error, loginForm: $loginForm)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 LoginModel? loginModel, bool? isLoginSuccess, bool isLoading, String? error, Map<String, dynamic> loginForm
});


$LoginModelCopyWith<$Res>? get loginModel;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loginModel = freezed,Object? isLoginSuccess = freezed,Object? isLoading = null,Object? error = freezed,Object? loginForm = null,}) {
  return _then(_self.copyWith(
loginModel: freezed == loginModel ? _self.loginModel : loginModel // ignore: cast_nullable_to_non_nullable
as LoginModel?,isLoginSuccess: freezed == isLoginSuccess ? _self.isLoginSuccess : isLoginSuccess // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,loginForm: null == loginForm ? _self.loginForm : loginForm // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginModelCopyWith<$Res>? get loginModel {
    if (_self.loginModel == null) {
    return null;
  }

  return $LoginModelCopyWith<$Res>(_self.loginModel!, (value) {
    return _then(_self.copyWith(loginModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LoginModel? loginModel,  bool? isLoginSuccess,  bool isLoading,  String? error,  Map<String, dynamic> loginForm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.loginModel,_that.isLoginSuccess,_that.isLoading,_that.error,_that.loginForm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LoginModel? loginModel,  bool? isLoginSuccess,  bool isLoading,  String? error,  Map<String, dynamic> loginForm)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.loginModel,_that.isLoginSuccess,_that.isLoading,_that.error,_that.loginForm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LoginModel? loginModel,  bool? isLoginSuccess,  bool isLoading,  String? error,  Map<String, dynamic> loginForm)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.loginModel,_that.isLoginSuccess,_that.isLoading,_that.error,_that.loginForm);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
   _LoginState({this.loginModel, this.isLoginSuccess, this.isLoading = false, this.error, final  Map<String, dynamic> loginForm = const {}}): _loginForm = loginForm;
  

@override final  LoginModel? loginModel;
@override final  bool? isLoginSuccess;
@override@JsonKey() final  bool isLoading;
@override final  String? error;
 final  Map<String, dynamic> _loginForm;
@override@JsonKey() Map<String, dynamic> get loginForm {
  if (_loginForm is EqualUnmodifiableMapView) return _loginForm;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_loginForm);
}


/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.loginModel, loginModel) || other.loginModel == loginModel)&&(identical(other.isLoginSuccess, isLoginSuccess) || other.isLoginSuccess == isLoginSuccess)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._loginForm, _loginForm));
}


@override
int get hashCode => Object.hash(runtimeType,loginModel,isLoginSuccess,isLoading,error,const DeepCollectionEquality().hash(_loginForm));

@override
String toString() {
  return 'LoginState(loginModel: $loginModel, isLoginSuccess: $isLoginSuccess, isLoading: $isLoading, error: $error, loginForm: $loginForm)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 LoginModel? loginModel, bool? isLoginSuccess, bool isLoading, String? error, Map<String, dynamic> loginForm
});


@override $LoginModelCopyWith<$Res>? get loginModel;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loginModel = freezed,Object? isLoginSuccess = freezed,Object? isLoading = null,Object? error = freezed,Object? loginForm = null,}) {
  return _then(_LoginState(
loginModel: freezed == loginModel ? _self.loginModel : loginModel // ignore: cast_nullable_to_non_nullable
as LoginModel?,isLoginSuccess: freezed == isLoginSuccess ? _self.isLoginSuccess : isLoginSuccess // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,loginForm: null == loginForm ? _self._loginForm : loginForm // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginModelCopyWith<$Res>? get loginModel {
    if (_self.loginModel == null) {
    return null;
  }

  return $LoginModelCopyWith<$Res>(_self.loginModel!, (value) {
    return _then(_self.copyWith(loginModel: value));
  });
}
}

// dart format on
