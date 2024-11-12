import 'dart:convert';
/// page : 1

PaginationRequestModel paginationRequestModelFromJson(String str) => PaginationRequestModel.fromJson(json.decode(str));
String paginationRequestModelToJson(PaginationRequestModel data) => json.encode(data.toJson());
class PaginationRequestModel {
  PaginationRequestModel({
      num? page,}){
    _page = page;
}

  PaginationRequestModel.fromJson(dynamic json) {
    _page = json['page'];
  }
  num? _page;
PaginationRequestModel copyWith({  num? page,
}) => PaginationRequestModel(  page: page ?? _page,
);
  num get page => _page??1;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = _page;
    return map;
  }

}