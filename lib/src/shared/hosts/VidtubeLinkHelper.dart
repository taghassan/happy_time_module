import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'easy_plex_supported_Hosts_model.dart';

class VidtubeLinkHelper {
  static final Dio _client = Dio(BaseOptions(headers: {
    'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
    // 'accept-language': 'ar-SD,ar;q=0.9',
    'cache-control': 'max-age=0',
    // 'cookie': 'file_id=290170; aff=1',
    'priority': 'u=0, i',
    // 'sec-ch-ua': '"Chromium";v="130", "Google Chrome";v="130", "Not?A_Brand";v="99"',
    'sec-ch-ua-mobile': '?0',
    // 'sec-ch-ua-platform': '"macOS"',
    // 'sec-fetch-dest': 'document',
    // 'sec-fetch-mode': 'navigate',
    // 'sec-fetch-site': 'none',
    'sec-fetch-user': '?1',
    'upgrade-insecure-requests': '1',
    // 'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36'
    'User-Agent':
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Safari/537.36',

  }));

  static fetch(
      {required String url, required Function(dynamic) onComplete}) async {
    try {
      var response = await _client.get(url);
      onComplete(response.data);
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
