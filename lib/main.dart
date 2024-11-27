import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:happy_time_module/src/shared/datasources/remote_datasource/movies_remote_data_source.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:toastification/toastification.dart';
import 'package:happy_time_module/src/core/Translation/translations.dart';
import 'package:happy_time_module/src/core/constants/themes.dart';
import 'package:happy_time_module/src/core/injectable/app_environment.dart';
import 'package:happy_time_module/src/core/injectable/injection.dart';
import 'package:happy_time_module/src/core/storage/user_session_storage.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbol_data_local.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/core/widgets/loading_overlay_widget.dart';
import 'package:happy_time_module/src/routes/appRoutes.dart';
import 'package:happy_time_module/src/routes/routes.dart';
/*
       <meta-data
            android:name="com.google.android.gms.ads.APPLICATION_ID"
            android:value="ca-app-pub-8107574011529731~5982000785"/>
 */
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async{

  await startHappyTimeApp();
}

startHappyTimeApp() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      MobileAds.instance.initialize();

      await initHappyTimeApp();
      runApp(const MyApp());
    },
    (exception, stackTrace) async {
      log(exception.toString());
      log(stackTrace.toString());
    },
  );
}

initHappyTimeApp() async {
  HttpOverrides.global = MyHttpOverrides();

  WidgetsFlutterBinding.ensureInitialized();

  try {
    await initializeDateFormatting("ar_AE", null);
    intl.Intl.defaultLocale = "ar_AE";
  } catch (_) {}

  // injectableModuleMicroConfigure(AppEnvironment.defaultEnv);
  configureDependencies(AppEnvironment.defaultEnv);

  try {
    // will use get storage to store object or key/pair data locally
    await GetStorage.init();
    await UserSessionStorage.initStorage();
  } catch (_) {}

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: GlobalLoaderOverlay(
        overlayWidgetBuilder: (progress) => LoadingOverlayWidget(
          progress: progress,
        ),
        textDirection: TextDirection.rtl,
        // useDefaultLoading: false,
        overlayWholeScreen: true,
        overlayColor: Colors.black.withOpacity(0.7),
        child: GetMaterialApp(
          title: '249',
          theme: AppThemes.lightTheme(context),
          darkTheme: AppThemes.darkTheme(context),
          themeMode: ThemeMode.light,
          translations: Translation(),
          defaultTransition: Transition.fade,
          locale: Locale(UserSessionStorage.language),
          fallbackLocale: Locale(UserSessionStorage.language),
          getPages: HappyTimeRouts.happyTimesRoutes(),
          debugShowCheckedModeBanner: false,
          initialRoute: UserSessionStorage.checkIsFirstOpen
              ? Routs.happyTimeOnboardingRoute
              : Routs.happyTimeSplashRoute,
          // home: const ApiFetchDemoPage(),
          // logWriterCallback: AppLogger.write,
        ),
      ),
    );
  }
}

class ApiFetchDemoPage extends StatefulWidget {
  const ApiFetchDemoPage({super.key});

  @override
  State<ApiFetchDemoPage> createState() => _ApiFetchDemoPageState();
}

class _ApiFetchDemoPageState extends State<ApiFetchDemoPage> {
  final MoviesRemoteDataSource _dataSource =
      happyTimeGetIt<MoviesRemoteDataSource>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            var response = await _dataSource.fetchHomeContent();

            response.when(
              success: (data) {

                for (var item in data.choosed ?? []) {
                  AppLogger.it.logInfo("choosed response ${item?.toJson()}");
                }

                for (var item in data.recents ?? []) {
                  AppLogger.it.logInfo("recents response ${item?.toJson()}");
                }

                for (var item in data.top10 ?? []) {
                  AppLogger.it.logInfo("top10 response ${item?.toJson()}");
                }

                for (var item in data.trending ?? []) {
                  AppLogger.it.logInfo("trending response ${item?.toJson()}");
                }

                for (var item in data.recommended ?? []) {
                  AppLogger.it.logInfo("recommended response ${item?.toJson()}");
                }

                for (var item in data.popularCasters ?? []) {
                  AppLogger.it.logInfo("popularCasters response ${item?.toJson()}");
                }

              },
              failure: (errorResultEntity) {
                AppLogger.it.logError(errorResultEntity.message.toString());
              },
            );
          } catch (e) {
            AppLogger.it.logError(e.toString());
          }
        },
      ),
    );
  }
}
