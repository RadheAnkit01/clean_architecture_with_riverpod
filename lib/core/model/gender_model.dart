import 'package:freezed_annotation/freezed_annotation.dart';

enum Gender {
  male('MALE', 'Male'),
  female('FEMALE', 'Female');

  const Gender(this.value, this.label);

  /// Value sent to the backend.
  final String value;

  /// Value displayed to the user.
  final String label;

  static Gender fromValue(String value) {
    return Gender.values.firstWhere(
      (gender) => gender.value.toUpperCase() == value.toUpperCase(),
      orElse: () => throw ArgumentError('Invalid gender: $value'),
    );
  }
}

class GenderConverter implements JsonConverter<Gender, String> {
  const GenderConverter();

  @override
  Gender fromJson(String json) {
    return Gender.fromValue(json);
  }

  @override
  String toJson(Gender object) {
    return object.value;
  }
}
