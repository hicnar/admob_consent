class GdprConsentStatus {

  final String name;
  const GdprConsentStatus._(this.name);

  static const GdprConsentStatus unknown = GdprConsentStatus._("unknown");
  static const GdprConsentStatus notRequired = GdprConsentStatus._("not_required");
  static const GdprConsentStatus obtained = GdprConsentStatus._("obtained");
  static const GdprConsentStatus required = GdprConsentStatus._("required");

  static final _allMap = {
    unknown.name: unknown,
    notRequired.name: notRequired,
    required.name: required,
    obtained.name: obtained
  };

  static GdprConsentStatus fromName(String value, {GdprConsentStatus orElse = unknown}) => _allMap[value] ?? orElse;

  bool get isGdprStatusObtained => this == obtained;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is GdprConsentStatus &&
              runtimeType == other.runtimeType &&
              name == other.name;

  @override
  int get hashCode => name.hashCode;
}