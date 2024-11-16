import 'package:get/get.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_binding.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/home_view.dart';
import 'package:happy_time_module/src/features/splash/presentation/controllers/splash_binding.dart';
import 'package:happy_time_module/src/features/splash/presentation/pages/onboarding.dart';
import 'package:happy_time_module/src/features/splash/presentation/pages/splash_view.dart';
import 'package:happy_time_module/src/routes/routes.dart';


class HappyTimeRouts {
  static Transition transition = Transition.fadeIn;
  static Duration transitionDuration = const Duration(milliseconds: 300);

  static happyTimesRoutes() => <GetPage<dynamic>>[
        GetPage(
          name: Routs.happyTimeOnboardingRoute,
          page: () => const Onboarding(),
          binding: SplashBinding(),
          transition: transition,
          transitionDuration: transitionDuration,
        ),
        GetPage(
          name: Routs.happyTimeSplashRoute,
          page: () => const SplashPage(),
          binding: SplashBinding(),
          transition: transition,
          transitionDuration: transitionDuration,
        ),
    GetPage(
      name: Routs.happyTimeHomeRoute,
      page: () => const HappyTimeHomePage(),
      binding: HappyTimeHomeBinding(),
      transition: transition,
      transitionDuration: transitionDuration,
    ),
      ];
}
