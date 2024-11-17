import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'easy_plex_supported_Hosts_model.dart';

class KobatubeEasyPlex {
  static final Dio _client = Dio(BaseOptions(headers: {
    'User-Agent':
        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Safari/537.36',


    'Connection': 'keep-alive',
    'Range': 'bytes=0-',
    'Referer': 'https://uqload.net/',
    'Sec-Fetch-Dest': 'video',
    'Sec-Fetch-Mode': 'no-cors',
    'Sec-Fetch-Site': 'same-site',
    'sec-ch-ua': '"Chromium";v="130", "Google Chrome";v="130", "Not?A_Brand";v="99"',
    'sec-ch-ua-mobile': '?0'

  }));

  static fetch(
      {required String url, required Function(dynamic) onComplete}) async {
    try {
      var response = await _client.get(url);
      String? src = getSrc(response.data);
      if (src != null) {
        List<EasyPlexSupportedHostsModel> easyPlexSupportedHostsModels = [];
        putModel(src, "Normal", easyPlexSupportedHostsModels);

        onComplete(easyPlexSupportedHostsModels);
      } else {
        onComplete('no links. found');
      }
    } catch (e) {
      Logger().e(e.toString());
    }
  }

  static String? getSrc(String response) {
    String regex = r'.*sources.*(https:.*)".*';
    RegExp pattern = RegExp(regex, caseSensitive: false);
    RegExpMatch? match = pattern.firstMatch(response);
    return match?.group(1)?.split(' ').last;
  }

  // Helper function to add model to the list
  static void putModel(
      String src, String type, List<EasyPlexSupportedHostsModel> modelList) {
    modelList.add(
      EasyPlexSupportedHostsModel(
        url: src,
        quality: type,
        cookie: '',
        httpHeaders: {
          'user-agent':
              'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36',
          'Connection': 'keep-alive',
          'Referer': 'https://uqload.net/',
        },
      ),
    );
  }
}
