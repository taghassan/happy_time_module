class EasyPlexSupportedHostsModel{
  String quality;
  String url;
  String cookie;
  Map<String,String>? httpHeaders;
  EasyPlexSupportedHostsModel({required this.url,required this.quality,required this.cookie,this.httpHeaders});
}