import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:happy_time_module/src/core/constants/app_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import '../utils/api_service.dart';
import 'injection.dart';
import 'configuration.dart';


@module
abstract class InjectableModule {
  @lazySingleton

  @lazySingleton
  Dio get dioInstance {
    final dio = Dio(
      BaseOptions(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'signature':AppConstants.signature,
            'hash256':AppConstants.hash256,
            'User-Agent':AppConstants.userAgent
          },
          validateStatus: (statusCode) {
            if (statusCode != null) {
              if (200 <= statusCode && statusCode < 300) {
                return true;
              } else {
                return false;
              }
            } else {
              return false;
            }
          }),
    );

    // dio.httpClientAdapter = IOHttpClientAdapter();

    dio.options.baseUrl = happyTimeGetIt<Configuration>().getBaseUrl;

    // Set the NTLM authentication credentials
    // dio.interceptors.add(InterceptorsWrapper(
    //   onRequest: (options, handler) {
    //     // options.headers['Authorization'] = 'Basic ${base64Encode(utf8.encode('inspector1:Abc12345'))}';
    //     return handler.next(options);
    //   },
    // ));

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

    dio.interceptors.add(CustomInterceptors());

    // dio.interceptors.add(RetryInterceptor(
    //   dio: dio,
    //   logPrint: (message) => AppLogger.it.logDebug("Retry Interceptor : $message"), // specify log function (optional)
    //   retries: 2, // retry count (optional)
    //   retryDelays: const [ // set delays between retries (optional)
    //     Duration(seconds: 3), // wait 1 sec before first retry
    //     Duration(seconds: 3), // wait 2 sec before second retry
    //     Duration(seconds: 3), // wait 3 sec before third retry
    //   ],
    // ));

    return dio;
  }

  @lazySingleton
  ApiService get apiService => ApiService();

  @lazySingleton
  Logger get logger => Logger();
}

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

    AppLogger.it.logTrace(
        'REQUEST[${options.method}] => PATH: ${options.path}  ${options.data != null ? "data => ${jsonEncode(options.data)}" : ''}  ${options.queryParameters.isNotEmpty ? "queryParameters => ${options.queryParameters}" : ''}');
    AppLogger.it.logDeveloper(
        'REQUEST[${options.method}] => PATH: ${options.path}  ${options.data != null ? "data => ${jsonEncode(options.data)}" : ''}  ${options.queryParameters.isNotEmpty ? "queryParameters => ${options.queryParameters}" : ''}');

    options.sendTimeout = const Duration(milliseconds: 60000);
    options.connectTimeout = const Duration(milliseconds: 60000);
    options.receiveTimeout = const Duration(milliseconds: 60000);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    AppLogger.it.logInfo(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path} [Content-Type]=${response.headers['Content-Type']}');


    // if (response.data['ResponseCode'] != 1) {
    //
    //   if (FirebaseCrashlytics.instance.isCrashlyticsCollectionEnabled) {
    //     // Collection is enabled.
    //
    //     var fakeError = DioException(
    //       requestOptions: response.requestOptions,
    //       error: response.data['ErrorMessage'],
    //       message: response.data['ErrorMessage'] != null &&
    //           response.data['ErrorMessage'].toString().isNotEmpty
    //           ? response.data['ErrorMessage']
    //           : response.data['ResponseContent'],
    //     );
    //
    //     FirebaseCrashlytics.instance.recordError(
    //       fakeError,
    //       fakeError.stackTrace,
    //       // fatal: true,
    //       // printDetails: true,
    //     );
    //
    //   }else{
    //     AppLogger.it.logError("is Crashlytics Collection Enabled ${FirebaseCrashlytics.instance.isCrashlyticsCollectionEnabled}");
    //   }
    //
    // }
    // else {
    //   super.onResponse(response, handler);
    // }
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {

    AppLogger.it.logError(err.toString());
    AppLogger.it.logError(
        'ERROR[${err.response?.statusCode}] [${err.response}] => PATH: ${err.requestOptions.path}');

// try{
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//
//   await FirebaseCrashlytics.instance.recordError(err, err.stackTrace);
//
// }catch(_){}

    super.onError(err, handler);
  }
}
