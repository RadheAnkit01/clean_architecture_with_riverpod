import 'package:freezed_annotation/freezed_annotation.dart';

enum CountryCode {
  india('IN', 'India', '+91', '🇮🇳'),
  australia('AU', 'Australia', '+61', '🇦🇺'),
  bahrain('BH', 'Bahrain', '+973', '🇧🇭'),
  brazil('BR', 'Brazil', '+55', '🇧🇷'),
  canada('CA', 'Canada', '+1', '🇨🇦'),
  hongKong('HK', 'Hong Kong', '+852', '🇭🇰'),
  indonesia('ID', 'Indonesia', '+62', '🇮🇩'),
  kuwait('KW', 'Kuwait', '+965', '🇰🇼'),
  malaysia('MY', 'Malaysia', '+60', '🇲🇾'),
  mauritius('MU', 'Mauritius', '+230', '🇲🇺'),
  nepal('NP', 'Nepal', '+977', '🇳🇵'),
  nigeria('NG', 'Nigeria', '+234', '🇳🇬'),
  oman('OM', 'Oman', '+968', '🇴🇲'),
  qatar('QA', 'Qatar', '+974', '🇶🇦'),
  russia('RU', 'Russia', '+7', '🇷🇺'),
  saudiArabia('SA', 'Saudi Arabia', '+966', '🇸🇦'),
  singapore('SG', 'Singapore', '+65', '🇸🇬'),
  southAfrica('ZA', 'South Africa', '+27', '🇿🇦'),
  sriLanka('LK', 'Sri Lanka', '+94', '🇱🇰'),
  thailand('TH', 'Thailand', '+66', '🇹🇭'),
  unitedArabEmirates('AE', 'United Arab Emirates', '+971', '🇦🇪'),
  unitedStates('US', 'United States', '+1', '🇺🇸');

  const CountryCode(
    this.isoCode,
    this.countryName,
    this.dialingCode,
    this.flag,
  );

  final String isoCode;
  final String countryName;
  final String dialingCode;
  final String flag;

  /// Find a country from its ISO code.
  static CountryCode fromIsoCode(String value) {
    return CountryCode.values.firstWhere(
      (country) => country.isoCode.toUpperCase() == value.toUpperCase(),
      orElse: () => throw ArgumentError('Invalid country code: $value'),
    );
  }
}

class CountryCodeConverter implements JsonConverter<CountryCode, String> {
  const CountryCodeConverter();

  @override
  CountryCode fromJson(String json) {
    return CountryCode.fromIsoCode(json);
  }

  @override
  String toJson(CountryCode object) {
    return object.isoCode;
  }
}
