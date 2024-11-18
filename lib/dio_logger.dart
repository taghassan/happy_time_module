import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

addPrettyDioLogger(Dio dio){
  // customization
  dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: false,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      enabled: kDebugMode,
      filter: (options, args){
        // don't print requests with uris containing '/posts'
        if(options.path.contains('/posts')){
          return false;
        }
        // don't print responses with unit8 list data
        return !args.isResponse || !args.hasUint8ListData;
      }
  )
  );

  dio.interceptors.add(
    kDebugMode
        ? LogInterceptor(
      responseBody: true,
      requestBody: true,
      request: true,
      requestHeader: true,
      error: true,
      responseHeader: true,
      logPrint: (obj) {
        debugPrint(obj.toString());
      },
    )
        : LogInterceptor(
      responseBody: false,
      requestBody: false,
      request: false,
      requestHeader: false,
      error: false,
      responseHeader: false,
      logPrint: (obj) {
        // debugPrint(obj.toString());
      },
    ),
  );

}