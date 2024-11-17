import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class VidSrcExtractorActivity{
  static final Dio _client = Dio(BaseOptions(headers: {
    'User-Agent':
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Safari/537.36'
  }));

  static fetch(
      {required String url, required Function(dynamic) onComplete}) async {
    try {

      if(url.contains('dzen')){

        var response = await _client.get(url);
        Logger().i("response $response");
        // String? src = getSrc(response.data);
        // if (src != null) {
        //   List<EasyPlexSupportedHostsModel> easyPlexSupportedHostsModels = [];
        //   putModel(src, "Normal", easyPlexSupportedHostsModels);
        //
        //   onComplete(easyPlexSupportedHostsModels);
        // } else {
        //   onComplete('no links. found');
        // }

      }


    } catch (e) {
      Logger().e(e.toString());
    }
  }

}