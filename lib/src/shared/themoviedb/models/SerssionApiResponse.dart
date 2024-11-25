import 'dart:convert';
/// success : true
/// guest_session_id : "1482d0ab4d0273140ac45318b628e163"
/// expires_at : "2024-11-26 19:55:04 UTC"

SessionApiResponse sessionApiResponseFromJson(String str) => SessionApiResponse.fromJson(json.decode(str));
String sessionApiResponseToJson(SessionApiResponse data) => json.encode(data.toJson());
class SessionApiResponse {
  SessionApiResponse({
      bool? success, 
      String? guestSessionId, 
      String? expiresAt,}){
    _success = success;
    _guestSessionId = guestSessionId;
    _expiresAt = expiresAt;
}

  SessionApiResponse.fromJson(dynamic json) {
    _success = json['success'];
    _guestSessionId = json['guest_session_id'];
    _expiresAt = json['expires_at'];
  }
  bool? _success;
  String? _guestSessionId;
  String? _expiresAt;

  bool? get success => _success;
  String? get guestSessionId => _guestSessionId;
  String? get expiresAt => _expiresAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['guest_session_id'] = _guestSessionId;
    map['expires_at'] = _expiresAt;
    return map;
  }

}