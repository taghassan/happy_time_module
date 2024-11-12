
class AppEnvironment {
  /// name of the environment
  final String name;

  /// default constructor
  const AppEnvironment(this.name);

  /// preset of common env name 'dev'
  static const dev = 'dev';

  /// preset of common env name 'prod'
  static const prod = 'prod';

  /// preset of common env name 'test'
  static const staging = 'staging';

  // static String configurationName =happyTimeGetIt<Configuration>().name;

  // static String get defaultEnv => AppEnvironment.prod;
  static String get defaultEnv => AppEnvironment.staging;

}